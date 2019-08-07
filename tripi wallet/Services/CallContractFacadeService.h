//
//  CallContractFacadeService.h
//  tripi wallet
//
//  Created by Heaving Line on 29.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CreateContractHandler)(TransactionManagerErrorType errorType,
                                     BTCTransaction *transaction,
                                     NSString *hashTransaction,
                                     TRIPIBigNumber *estimatedValue);

typedef void(^CallFunctionHandler)(TransactionManagerErrorType errorType,
                                   BTCTransaction *transaction,
                                   NSString *hashTransaction,
                                   TRIPIBigNumber *estimatedFee);

typedef void(^QueryFunctionHandler)(NSString* result,
                                    NSError *error);

typedef void(^ExistingContractHandler)(BOOL exist,
                                    NSError *error);

@interface CallContractFacadeService : NSObject

- (void)createSmartContractWithTemplate:(NSString *) templatePath
                               andArray:(NSArray *) args
                                    fee:(TRIPIBigNumber *) fee
                               gasPrice:(TRIPIBigNumber *) gasPrice
                               gasLimit:(TRIPIBigNumber *) gasLimit
                             andHandler:(CreateContractHandler) completion;

-(void)callContractFunctionWithItem:(AbiinterfaceItem *) item
                             andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                            andAmount:(TRIPIBigNumber*) amount
                            fromAddress:(NSString*) fromAddress
                             andToken:(Contract *) contract
                               andFee:(TRIPIBigNumber *) fee
                          andGasPrice:(TRIPIBigNumber *) gasPrice
                          andGasLimit:(TRIPIBigNumber *) gasLimit
                        andHandler:(CallFunctionHandler) completion;

-(void)queryContractFunctionWithItem:(AbiinterfaceItem *) item
                            andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                            andToken:(Contract *) contract
                          andHandler:(QueryFunctionHandler) completion;

-(void)checkContractWithAddress:(NSString *) contractAddress
                     andHandler:(ExistingContractHandler) completion;

@end
