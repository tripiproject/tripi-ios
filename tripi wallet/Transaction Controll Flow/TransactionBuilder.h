//
//  TransactionBuilder.h
//  tripi wallet
//
//  Created by Heaving Line on 06.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TransactionScriptBuilder.h"

typedef NS_ENUM(NSInteger, TransactionManagerErrorType) {
	TransactionManagerErrorTypeNone,
	TransactionManagerErrorTypeNoInternetConnection,
	TransactionManagerErrorTypeServer,
	TransactionManagerErrorTypeOups,
	TransactionManagerErrorTypeNotEnoughMoney,
	TransactionManagerErrorTypeNotEnoughMoneyOnAddress,
	TransactionManagerErrorTypeNotEnoughFee,
	TransactionManagerErrorTypeNotEnoughGasLimit,
	TransactionManagerErrorTypeInvalidAddress
};

@interface TransactionBuilder : NSObject

- (instancetype)initWithScriptBuilder:(TransactionScriptBuilder *) scriptBuilder;

- (BTCTransaction *)smartContractCreationTxWithUnspentOutputs:(NSArray *) unspentOutputs
												   withAmount:(NSInteger) amount
												  withBitcode:(NSData *) bitcode
													  withFee:(NSInteger) fee
												 withGasLimit:(TRIPIBigNumber *) gasLimit
												 withGasprice:(TRIPIBigNumber *) gasPrice
											   withWalletKeys:(NSArray<BTCKey *> *) walletKeys;

- (void)callContractTxWithUnspentOutputs:(NSArray <BTCTransactionOutput *> *) unspentOutputs
								  amount:(NSInteger) amount
						 contractAddress:(NSData *) contractAddress
							   toAddress:(NSString *) toAddress
						   fromAddresses:(NSArray<NSString *> *) fromAddresses
								 bitcode:(NSData *) bitcode
								 withFee:(NSInteger) fee
							withGasLimit:(TRIPIBigNumber *) gasLimit
							withGasprice:(TRIPIBigNumber *) gasPrice
							  walletKeys:(NSArray<BTCKey *> *) walletKeys
							  andHandler:(void (^)(TransactionManagerErrorType errorType, BTCTransaction *transaction)) completion;

- (void)regularTransactionWithUnspentOutputs:(NSArray <BTCTransactionOutput *> *) unspentOutputs
									  amount:(NSInteger) amount
						  amountAndAddresses:(NSArray *) amountAndAddresses
									 withFee:(NSInteger) fee
								  walletKeys:(NSArray<BTCKey *> *) walletKeys
								  andHandler:(void (^)(TransactionManagerErrorType errorType, BTCTransaction *transaction)) completion;

@end
