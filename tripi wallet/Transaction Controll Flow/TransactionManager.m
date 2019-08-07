//
//  TransactionManager.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 02.11.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "WalletManagerRequestAdapter.h"

static NSString *op_exec = @"c1";

@interface TransactionManager ()

@property (strong, nonatomic) TransactionBuilder *transactionBuilder;
@property (strong, nonatomic) TransactionScriptBuilder *scriptBuilder;

@property (strong, nonatomic) TRIPIBigNumber *defaultFeePerKb;

@end

static NSInteger constantFee = 400000000;

@implementation TransactionManager

- (instancetype)init {

	self = [super init];
	if (self) {
		_scriptBuilder = [TransactionScriptBuilder new];
		_transactionBuilder = [[TransactionBuilder alloc] initWithScriptBuilder:_scriptBuilder];
		_defaultFeePerKb = [TRIPIBigNumber decimalWithString:@"0.001"];
	}
	return self;
}

- (void)getFeePerKbWithHandler:(void (^)(TRIPIBigNumber *feePerKb)) completion {

	[SLocator.requestManager getFeePerKbWithSuccessHandler:^(TRIPIBigNumber *feePerKb) {
		completion (feePerKb);
	}                                    andFailureHandler:^(NSError *error, NSString *message) {
		completion (self.defaultFeePerKb);
	}];
}

- (void)getFeeWithContractAddress:(NSString *) address
					  fromAddress:(NSString *) fromAddress
					   withHashes:(NSArray *) hashes
					  withHandler:(void (^)(TRIPIBigNumber *gas)) completesion {

	[SLocator.requestManager callFunctionToContractAddress:address
											  frommAddress:fromAddress
												withHashes:hashes withHandler:^(id responseObject) {

				if (![responseObject isKindOfClass:[NSDictionary class]]) {
					completesion (nil);
					return;
				}

				NSNumber *gas;
				NSArray *items = responseObject[@"items"];
				if ([items isKindOfClass:[NSArray class]] && items.count > 0) {
					gas = [items firstObject][@"gas_used"];
				}

				if ([gas isKindOfClass:[NSNumber class]] && gas) {
					completesion ([TRIPIBigNumber decimalWithString:gas.stringValue]);
				} else {
					completesion (nil);
				}
			}];
}


- (void)sendTransactionWalletKeys:(NSArray<BTCKey *> *) walletKeys
			   toAddressAndAmount:(NSArray *) amountsAndAddresses
							  fee:(TRIPIBigNumber *) fee
					   andHandler:(void (^)(TransactionManagerErrorType errorType,
							   id response,
							   TRIPIBigNumber *estimatedFee)) completion {

	NSOperationQueue *requestQueue = [[NSOperationQueue alloc] init];

	__weak typeof (self) weakSelf = self;

	dispatch_block_t block = ^{

		NSArray *walletAddreses = [weakSelf getAddressesFromKeys:walletKeys];
		NSDictionary *allPreparedValues = [weakSelf createAmountsAndAddresses:amountsAndAddresses];

		if (!allPreparedValues) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeInvalidAddress, nil, nil);
			});
			return;
		}

		NSInteger amount = [allPreparedValues[@"totalAmount"] integerValue];

		NSArray *preparedAmountAndAddreses = allPreparedValues[@"amountsAndAddresses"];

		dispatch_semaphore_t semaphore = dispatch_semaphore_create (0);

		NSArray <BTCTransactionOutput *> *__block unspentOutputs = @[];

		[SLocator.walletManager.requestAdapter getunspentOutputs:walletAddreses withSuccessHandler:^(NSArray <BTCTransactionOutput *> *responseObject) {

			unspentOutputs = responseObject;
			dispatch_semaphore_signal (semaphore);

		}                                      andFailureHandler:^(NSError *error, NSString *message) {

			dispatch_async (dispatch_get_main_queue (), ^{
				completion ([error isNoInternetConnectionError] ?
						TransactionManagerErrorTypeNoInternetConnection :
						TransactionManagerErrorTypeServer, nil, nil);
			});
			return;
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		TRIPIBigNumber *__block feePerKb;

		[weakSelf getFeePerKbWithHandler:^(TRIPIBigNumber *aFeePerKb) {

			if (aFeePerKb) {

				feePerKb = aFeePerKb;
				dispatch_semaphore_signal (semaphore);
			} else {

				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, nil, nil);
				});
				return;
			}
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		if ([fee isLessThan:feePerKb]) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeNotEnoughFee, nil, feePerKb);
			});
			return;
		}

		BTCTransaction *__block transaction;
		TransactionManagerErrorType __block errorType;
		TRIPIBigNumber *__block estimatedFee = fee;
		TRIPIBigNumber *__block passedFee;

		do {
			[weakSelf.transactionBuilder regularTransactionWithUnspentOutputs:unspentOutputs
																	   amount:(NSInteger)amount
														   amountAndAddresses:preparedAmountAndAddreses
																	  withFee:[self satoshiFromNumber:estimatedFee]
																   walletKeys:walletKeys
																   andHandler:^(TransactionManagerErrorType aErrorType, BTCTransaction *aTransaction) {

																	   transaction = aTransaction;
																	   errorType = aErrorType;

																	   if (transaction) {
																		   passedFee = estimatedFee;
																		   estimatedFee = [estimatedFee add:feePerKb];
																	   }
																   }];

		} while (transaction &&
				passedFee.satoshiAmountValue < [transaction estimatedFeeWithRate:feePerKb.satoshiAmountValue]);

		if (transaction && [passedFee isEqualToDecimalNumber:fee]) {
			[weakSelf sendTransaction:transaction withSuccess:^(id response) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeNone, response, nil);
				});
			}              andFailure:^(NSString *message) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, message, nil);
				});
			}];

		} else {

			dispatch_async (dispatch_get_main_queue (), ^{
				if (transaction) {
					//                    passedFee = [passedFee decimalNumberByMultiplyingBy:[[TRIPIBigNumber alloc] initWithLong:BTCCoin]];
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (TransactionManagerErrorTypeNotEnoughFee, nil, passedFee);
					});
				} else {
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (errorType, nil, nil);
					});
				}
			});
		}
	};

	[requestQueue addOperationWithBlock:block];
}

- (void)sendTransactionToToken:(Contract *) token
					 toAddress:(NSString *) toAddress
						amount:(TRIPIBigNumber *) amount
						   fee:(TRIPIBigNumber *) fee
					  gasPrice:(TRIPIBigNumber *) gasPrice
					  gasLimit:(TRIPIBigNumber *) gasLimit
					andHandler:(void (^)(TransactionManagerErrorType errorType,
							BTCTransaction *transaction,
							NSString *hashTransaction,
							TRIPIBigNumber *estimatedFee)) completion {

	NSString *__block addressWithAmountValue;
	[token.addressBalanceDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *address, TRIPIBigNumber *balance, BOOL *_Nonnull stop) {

		if ([balance isGreaterThan:[[TRIPIBigNumber alloc] initWithString:amount.stringValue]]) {
			addressWithAmountValue = address;
			*stop = YES;
		}
	}];

	[self sendToken:token
		fromAddress:addressWithAmountValue
		  toAddress:toAddress
			 amount:amount
				fee:fee
		   gasPrice:gasPrice
		   gasLimit:gasLimit
		 andHandler:^(TransactionManagerErrorType errorType, BTCTransaction *transaction, NSString *hashTransaction, TRIPIBigNumber *estimatedFee) {
			 dispatch_async (dispatch_get_main_queue (), ^{
				 completion (errorType, transaction, hashTransaction, estimatedFee);
			 });
		 }];
}

- (void)sendToken:(Contract *) token
	  fromAddress:(NSString *) fromAddress
		toAddress:(NSString *) toAddress
		   amount:(TRIPIBigNumber *) amount
			  fee:(TRIPIBigNumber *) fee
		 gasPrice:(TRIPIBigNumber *) gasPrice
		 gasLimit:(TRIPIBigNumber *) gasLimit
	   andHandler:(void (^)(TransactionManagerErrorType errorType,
			   BTCTransaction *transaction,
			   NSString *hashTransaction,
			   TRIPIBigNumber *estimatedFee)) completion {

	// Checking address
	BTCPublicKeyAddress *address = [BTCPublicKeyAddress addressWithString:toAddress];
	if (!address) {
		dispatch_async (dispatch_get_main_queue (), ^{
			completion (TransactionManagerErrorTypeInvalidAddress, nil, nil, nil);
		});
        return;
	}

	AbiinterfaceItem *transferMethod = [SLocator.contractInterfaceManager tokenStandartTransferMethodInterface];
	NSData *hashFuction = [SLocator.contractInterfaceManager hashOfFunction:transferMethod appendingParam:@[toAddress, [amount stringValue]]];

	NSString *__block addressWithAmountValue = fromAddress;

	TRIPIBigNumber *addressBalance = token.addressBalanceDictionary[addressWithAmountValue];

	if (addressBalance) {
		if ([addressBalance isLessThan:[[TRIPIBigNumber alloc] initWithString:amount.stringValue]]) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeNotEnoughMoney, nil, nil, nil);
			});
			return;
		}
	} else {
		dispatch_async (dispatch_get_main_queue (), ^{
			completion (TransactionManagerErrorTypeNotEnoughMoney, nil, nil, nil);
		});
		return;
	}

	if (addressWithAmountValue && amount) {

		[self callContractWithAddress:[NSString dataFromHexString:token.contractAddress]
						   andBitcode:hashFuction
                               amount:[TRIPIBigNumber decimalWithInteger:0]
						fromAddresses:@[addressWithAmountValue]
							toAddress:nil
						   walletKeys:SLocator.walletManager.wallet.allKeys
								  fee:fee gasPrice:gasPrice gasLimit:gasLimit
						   andHandler:^(TransactionManagerErrorType errorType, BTCTransaction *transaction, NSString *hashTransaction, TRIPIBigNumber *estimatedFee) {
							   dispatch_async (dispatch_get_main_queue (), ^{
								   completion (errorType, transaction, hashTransaction, estimatedFee);
							   });
						   }];

	} else {
		dispatch_async (dispatch_get_main_queue (), ^{
			completion (TransactionManagerErrorTypeNotEnoughMoney, nil, nil, nil);
		});
	}
}

- (void)createSmartContractWithKeys:(NSArray<BTCKey *> *) walletKeys
						 andBitcode:(NSData *) bitcode
								fee:(TRIPIBigNumber *) fee
						   gasPrice:(TRIPIBigNumber *) gasPrice
						   gasLimit:(TRIPIBigNumber *) gasLimit
						 andHandler:(void (^)(TransactionManagerErrorType errorType,
								 BTCTransaction *transaction,
								 NSString *hashTransaction, TRIPIBigNumber *estimatedValue)) completion {

	//NSAssert(walletKeys.count > 0, @"Keys must be grater then zero");
	if (!walletKeys.count) {
		dispatch_async (dispatch_get_main_queue (), ^{
			completion (TransactionManagerErrorTypeInvalidAddress, nil, nil, nil);
		});
	}

	__weak typeof (self) weakSelf = self;
	NSArray *__block walletAddreses = [self getAddressesFromKeys:walletKeys];

	NSOperationQueue *requestQueue = [[NSOperationQueue alloc] init];
	dispatch_block_t block = ^{

		dispatch_semaphore_t semaphore = dispatch_semaphore_create (0);

		NSArray <BTCTransactionOutput *> *__block unspentOutputs = @[];

		[SLocator.walletManager.requestAdapter getunspentOutputs:walletAddreses withSuccessHandler:^(NSArray <BTCTransactionOutput *> *responseObject) {
			unspentOutputs = responseObject;
			dispatch_semaphore_signal (semaphore);
		}                                      andFailureHandler:^(NSError *error, NSString *message) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeServer, nil, nil, nil);
			});
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		TRIPIBigNumber *__block feePerKb;

		[weakSelf getFeePerKbWithHandler:^(TRIPIBigNumber *aFeePerKb) {
			if (aFeePerKb) {
				feePerKb = aFeePerKb;
				dispatch_semaphore_signal (semaphore);
			} else {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, nil, nil, nil);
				});
				return;
			}
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		BTCTransaction *__block transactionForCheck;
		TRIPIBigNumber *__block gas = [[gasLimit divide:[[TRIPIBigNumber alloc] initWithInteger:BTCCoin]] multiply:gasPrice];
		TRIPIBigNumber *__block estimatedUserFee = [fee add:gas];
		TRIPIBigNumber *__block estimatedFee = [fee add:gas];
		TRIPIBigNumber *__block passedFee;

		do {
			BTCTransaction *tx = [weakSelf.transactionBuilder smartContractCreationTxWithUnspentOutputs:unspentOutputs
																							 withAmount:0
																							withBitcode:bitcode
																								withFee:[self satoshiFromNumber:estimatedFee]
																						   withGasLimit:gasLimit
																						   withGasprice:gasPrice
																						 withWalletKeys:walletKeys];

			if (tx) {
				transactionForCheck = tx;
				passedFee = estimatedFee;
				estimatedFee = [estimatedFee add:feePerKb];
			}
		} while (transactionForCheck && passedFee.satoshiAmountValue < ([transactionForCheck estimatedFeeWithRate:feePerKb.satoshiAmountValue] + gas.satoshiAmountValue));

		BOOL isUsersFee = [passedFee isEqualToDecimalNumber:estimatedUserFee];

		if (transactionForCheck && isUsersFee) {
			[weakSelf sendTransaction:transactionForCheck withSuccess:^(id response) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeNone, transactionForCheck, response[@"txid"], nil);
				});
			}              andFailure:^(NSString *message) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, nil, nil, nil);
				});
			}];
		} else {
			dispatch_async (dispatch_get_main_queue (), ^{
				if (transactionForCheck) {
					TRIPIBigNumber *feeOnlyForTransaction = [[TRIPIBigNumber alloc] initWithInteger:(NSInteger)[transactionForCheck estimatedFeeWithRate:feePerKb.satoshiAmountValue]];
					feeOnlyForTransaction = [feeOnlyForTransaction divide:[[TRIPIBigNumber alloc] initWithInteger:BTCCoin]];
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (TransactionManagerErrorTypeNotEnoughFee, nil, nil, feeOnlyForTransaction);
					});
				} else {
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (TransactionManagerErrorTypeOups, nil, nil, nil);
					});
				}
			});
		}
	};

	[requestQueue addOperationWithBlock:block];
}

- (void)callContractWithAddress:(NSData *) contractAddress
					 andBitcode:(NSData *) bitcode
                         amount:(TRIPIBigNumber *) amount
				  fromAddresses:(NSArray<NSString *> *) fromAddresses
					  toAddress:(NSString *) toAddress
					 walletKeys:(NSArray<BTCKey *> *) walletKeys
							fee:(TRIPIBigNumber *) fee
					   gasPrice:(TRIPIBigNumber *) gasPrice
					   gasLimit:(TRIPIBigNumber *) aGasLimit
					 andHandler:(void (^)(TransactionManagerErrorType errorType,
							 BTCTransaction *transaction,
							 NSString *hashTransaction,
							 TRIPIBigNumber *estimatedFee)) completion {

	NSOperationQueue *requestQueue = [[NSOperationQueue alloc] init];

	__weak typeof (self) weakSelf = self;

	dispatch_block_t block = ^{

		dispatch_semaphore_t semaphore = dispatch_semaphore_create (0);

		if (!fromAddresses.count) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeInvalidAddress, nil, nil, nil);
			});
			return;
		}

		TRIPIBigNumber *__block gasLimitEstimate;

		[weakSelf getFeeWithContractAddress:[NSString hexadecimalString:contractAddress]
								fromAddress:[fromAddresses firstObject]
								 withHashes:@[[NSString hexadecimalString:bitcode]] withHandler:^(TRIPIBigNumber *gas) {

					if (gas) {
						gasLimitEstimate = gas;
						dispatch_semaphore_signal (semaphore);
					} else {
						dispatch_async (dispatch_get_main_queue (), ^{
							completion (TransactionManagerErrorTypeOups, nil, nil, nil);
						});
					}
				}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

//        if ([aGasLimit isLessThan:gasLimitEstimate]) {
//            dispatch_async (dispatch_get_main_queue (), ^{
//                completion (TransactionManagerErrorTypeNotEnoughGasLimit, nil, nil, gasLimitEstimate);
//            });
//            return;
//        }

		NSArray <BTCTransactionOutput *> *__block unspentOutputs = @[];

		[SLocator.walletManager.requestAdapter getunspentOutputs:fromAddresses withSuccessHandler:^(NSArray <BTCTransactionOutput *> *responseObject) {
			unspentOutputs = responseObject;
			dispatch_semaphore_signal (semaphore);
		}                                      andFailureHandler:^(NSError *error, NSString *message) {
			dispatch_async (dispatch_get_main_queue (), ^{
				completion (TransactionManagerErrorTypeServer, nil, nil, nil);
			});
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		TRIPIBigNumber *__block feePerKb;

		[weakSelf getFeePerKbWithHandler:^(TRIPIBigNumber *aFeePerKb) {
			if (aFeePerKb) {
				feePerKb = aFeePerKb;
				dispatch_semaphore_signal (semaphore);
			} else {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, nil, nil, nil);
				});
				return;
			}
		}];

		dispatch_semaphore_wait (semaphore, DISPATCH_TIME_FOREVER);

		BTCTransaction *__block transactionForCheck;
		TRIPIBigNumber *__block gas = [[aGasLimit divide:[[TRIPIBigNumber alloc] initWithInteger:BTCCoin]] multiply:gasPrice];
		TRIPIBigNumber *__block estimatedUserFee = [fee add:gas];
		TRIPIBigNumber *__block estimatedFee = [fee add:gas];
		TRIPIBigNumber *__block passedFee;
		TransactionManagerErrorType __block errorType;

		do {
			[weakSelf.transactionBuilder callContractTxWithUnspentOutputs:unspentOutputs
                                                                   amount:[self satoshiFromNumber:amount]
														  contractAddress:contractAddress
																toAddress:toAddress
															fromAddresses:fromAddresses
																  bitcode:bitcode
																  withFee:[self satoshiFromNumber:estimatedFee]
															 withGasLimit:aGasLimit
															 withGasprice:gasPrice
															   walletKeys:walletKeys
															   andHandler:^(TransactionManagerErrorType aErrorType, BTCTransaction *transaction) {
																   if (transaction) {
																	   transactionForCheck = transaction;
																	   passedFee = estimatedFee;
																	   estimatedFee = [estimatedFee add:feePerKb];
																   }
																   errorType = aErrorType;
															   }];
		} while (transactionForCheck && passedFee.satoshiAmountValue < ([transactionForCheck estimatedFeeWithRate:feePerKb.satoshiAmountValue] + gas.satoshiAmountValue));

		BOOL isUsersFee = [passedFee isEqualToDecimalNumber:estimatedUserFee];

		if (transactionForCheck && isUsersFee) {
			[weakSelf sendTransaction:transactionForCheck withSuccess:^(id response) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeNone, transactionForCheck, response[@"txid"], nil);
				});
			}              andFailure:^(NSString *message) {
				dispatch_async (dispatch_get_main_queue (), ^{
					completion (TransactionManagerErrorTypeServer, nil, nil, nil);
				});
			}];
		} else {
			dispatch_async (dispatch_get_main_queue (), ^{
				if (transactionForCheck) {
					TRIPIBigNumber *feeOnlyForTransaction = [[TRIPIBigNumber alloc] initWithInteger:(NSInteger)[transactionForCheck estimatedFeeWithRate:feePerKb.satoshiAmountValue]];
					feeOnlyForTransaction = [feeOnlyForTransaction divide:[[TRIPIBigNumber alloc] initWithInteger:BTCCoin]];
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (TransactionManagerErrorTypeNotEnoughFee, nil, nil, feeOnlyForTransaction);
					});
				} else {
					dispatch_async (dispatch_get_main_queue (), ^{
						completion (errorType, nil, nil, nil);
					});
				}
			});
		}
	};

	[requestQueue addOperationWithBlock:block];
}


- (void)sendTransaction:(BTCTransaction *) transaction withSuccess:(void (^)(id response)) success andFailure:(void (^)(NSString *message)) failure {

	if (transaction) {

		[SLocator.requestManager sendTransactionWithParam:@{@"data": transaction.hexWithTime, @"allowHighFee": @1} withSuccessHandler:^(id responseObject) {
			success (responseObject);
		}                               andFailureHandler:^(NSString *message) {
			failure (@"Can not send transaction");
		}];
	} else {
		failure (@"Cant Create Transaction");
	}
}


#pragma mark - Private


- (NSDictionary *)createAmountsAndAddresses:(NSArray *) array {

	NSMutableArray *mutArray = [NSMutableArray new];
	BTCAmount totalAmount = 0;
	for (NSDictionary *dictionary in array) {

		BTCPublicKeyAddress *toPublicKeyAddress = [BTCPublicKeyAddress addressWithString:dictionary[@"address"]];

		BTCAmount amount = [(TRIPIBigNumber *)dictionary[@"amount"] satoshiAmountValue];

		totalAmount += amount;

		if (!toPublicKeyAddress) {
			return nil;
		}

		NSDictionary *newDictionary = @{@"address": toPublicKeyAddress, @"amount": @(amount)};
		[mutArray addObject:newDictionary];
	}
	return @{@"totalAmount": @(totalAmount), @"amountsAndAddresses": [mutArray copy]};
}

- (NSInteger)satoshiFromNumber:(TRIPIBigNumber *) number {

	if (number) {
		return (NSInteger)number.satoshiAmountValue;
	} else {
		return constantFee;
	}
}


- (NSArray *)getAddressesFromKeys:(NSArray<BTCKey *> *) keys {

	NSMutableArray *addresesForSending = [NSMutableArray new];

	for (BTCKey *key in keys) {

		NSString *keyString = SLocator.appSettings.isMainNet ? key.address.string : key.addressTestnet.string;
		[addresesForSending addObject:keyString];
	}

	NSAssert(addresesForSending.count > 0, @"There is no addresses in keys");

	return addresesForSending;
}


@end

