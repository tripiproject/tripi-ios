//
//  TransactionManager.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 02.11.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TransactionBuilder.h"

@interface TransactionManager : NSObject

- (void)sendTransactionWalletKeys:(NSArray<BTCKey *> *) walletKeys
			   toAddressAndAmount:(NSArray *) amountsAndAddresses
							  fee:(TRIPIBigNumber *) fee
					   andHandler:(void (^)(TransactionManagerErrorType errorType,
							   id response,
							   TRIPIBigNumber *estimatedFee)) completion;

- (void)createSmartContractWithKeys:(NSArray<BTCKey *> *) walletKeys
						 andBitcode:(NSData *) bitcode
								fee:(TRIPIBigNumber *) fee
						   gasPrice:(TRIPIBigNumber *) gasPrice
						   gasLimit:(TRIPIBigNumber *) gasLimit
						 andHandler:(void (^)(TransactionManagerErrorType errorType, BTCTransaction *transaction, NSString *hashTransaction, TRIPIBigNumber *estimatedValue)) completion;

- (void)callContractWithAddress:(NSData *) contractAddress
					 andBitcode:(NSData *) bitcode
                         amount:(TRIPIBigNumber *) amount
				  fromAddresses:(NSArray<NSString *> *) fromAddresses
					  toAddress:(NSString *) toAddress
					 walletKeys:(NSArray<BTCKey *> *) walletKeys
							fee:(TRIPIBigNumber *) fee
					   gasPrice:(TRIPIBigNumber *) gasPrice
					   gasLimit:(TRIPIBigNumber *) gasLimit
					 andHandler:(void (^)(TransactionManagerErrorType errorType,
							 BTCTransaction *transaction,
							 NSString *hashTransaction,
							 TRIPIBigNumber *estimatedFee)) completion;

- (void)sendTransactionToToken:(Contract *) token
					 toAddress:(NSString *) toAddress
						amount:(TRIPIBigNumber *) amount
						   fee:(TRIPIBigNumber *) fee
					  gasPrice:(TRIPIBigNumber *) gasPrice
					  gasLimit:(TRIPIBigNumber *) gasLimit
					andHandler:(void (^)(TransactionManagerErrorType errorType,
							BTCTransaction *transaction,
							NSString *hashTransaction,
							TRIPIBigNumber *estimatedFee)) completion;

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
			   TRIPIBigNumber *estimatedFee)) completion;

- (void)getFeePerKbWithHandler:(void (^)(TRIPIBigNumber *feePerKb)) completion;


@end
