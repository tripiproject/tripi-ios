//
//  CallContractFacadeService.m
//  tripi wallet
//
//  Created by Heaving Line on 29.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CallContractFacadeService.h"
#import "ResultTokenInputsModel.h"

@interface CallContractFacadeService()

@property (assign, nonatomic) BOOL queryProcessing;

@end

@implementation CallContractFacadeService

- (void)createSmartContractWithTemplate:(NSString *) templatePath
                               andArray:(NSArray *) args
                                    fee:(TRIPIBigNumber *) fee
                               gasPrice:(TRIPIBigNumber *) gasPrice
                               gasLimit:(TRIPIBigNumber *) gasLimit
                             andHandler:(void (^)(TransactionManagerErrorType errorType,
                                              BTCTransaction *transaction,
                                              NSString *hashTransaction, TRIPIBigNumber *estimatedValue)) completion {
    
    
    NSData *contractWithArgs = [SLocator.contractInterfaceManager tokenBitecodeWithTemplate:templatePath andArray:args];
    
    [SLocator.transactionManager createSmartContractWithKeys:SLocator.walletManager.wallet.allKeys
                                                  andBitcode:contractWithArgs
                                                         fee:fee
                                                    gasPrice:gasPrice
                                                    gasLimit:gasLimit
                                                  andHandler:^(TransactionManagerErrorType errorType, BTCTransaction *transaction, NSString *hashTransaction, TRIPIBigNumber *estimatedValue) {
                                                      completion(errorType,transaction,hashTransaction,estimatedValue);
                                                  }];
}

-(void)callContractFunctionWithItem:(AbiinterfaceItem *) item
                           andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                          andAmount:(TRIPIBigNumber*) amount
                        fromAddress:(NSString*) fromAddress
                           andToken:(Contract *) contract
                             andFee:(TRIPIBigNumber *) fee
                        andGasPrice:(TRIPIBigNumber *) gasPrice
                        andGasLimit:(TRIPIBigNumber *) gasLimit
                         andHandler:(void (^)(TransactionManagerErrorType errorType,
                                              BTCTransaction *transaction,
                                              NSString *hashTransaction,
                                              TRIPIBigNumber *estimatedFee)) completion {
    
    NSMutableArray *param = @[].mutableCopy;
    for (int i = 0; i < inputs.count; i++) {
        [param addObject:inputs[i].value];
    }
    
    NSArray<NSString *> *addressWithTokensValue = @[fromAddress];
    
    NSData *hashFuction = [SLocator.contractInterfaceManager hashOfFunction:item appendingParam:param];
    
    [SLocator.transactionManager callContractWithAddress:[NSString dataFromHexString:contract.contractAddress]
                                              andBitcode:hashFuction
                                                  amount:amount
                                           fromAddresses:addressWithTokensValue
                                               toAddress:nil
                                              walletKeys:SLocator.walletManager.wallet.allKeys
                                                     fee:fee
                                                gasPrice:gasPrice
                                                gasLimit:gasLimit
                                              andHandler:^(TransactionManagerErrorType errorType, BTCTransaction *transaction, NSString *hashTransaction, TRIPIBigNumber *estimatedFee) {
                                                  
                                                  completion(errorType, transaction, hashTransaction, estimatedFee);
                                              }];
}


-(void)queryContractFunctionWithItem:(AbiinterfaceItem *) item
                            andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                            andToken:(Contract *) contract
                          andHandler:(QueryFunctionHandler) completion {
    
    if (self.queryProcessing) {
        return;
    }
    
    NSMutableArray *param = @[].mutableCopy;
    for (int i = 0; i < inputs.count; i++) {
        [param addObject:inputs[i].value];
    }
    
    NSData *hashFuction = [SLocator.contractInterfaceManager hashOfFunction:item appendingParam:param];
    NSString* hashAsString = [NSString hexadecimalString:hashFuction];
    
    __weak __typeof(self) weakSelf = self;
    [SLocator.requestManager callFunctionToContractAddress:contract.contractAddress
                                              frommAddress:nil
                                                withHashes:@[hashAsString]
                                               withHandler:^(id responseObject) {
                                                   
                                                   if (![responseObject isKindOfClass:[NSError class]] && [responseObject[@"items"] isKindOfClass:[NSArray class]]) {
                                                       
                                                       for (NSDictionary *dict in responseObject[@"items"]) {
                                                           
                                                           NSString *output = dict[@"output"];
                                                           
                                                           NSArray *array = [SLocator.contractArgumentsInterpretator аrrayFromContractArguments:[NSString dataFromHexString:output] andInterface:item];
                                                           
                                                           NSString* resultString = @"";
                                                           for (int i = 0; i < array.count; i++) {
                                                               resultString = [resultString stringByAppendingString:[NSString stringWithFormat:@"%@",array[i]]];
                                                           }
                                                           completion(resultString, nil);
                                                       }
                                                   } else if ([responseObject isKindOfClass:[NSError class]]){
                                                       completion(nil, responseObject);
                                                   } else {
                                                       completion(nil, nil);
                                                   }
                                                   
                                                   weakSelf.queryProcessing = NO;
                                                }];
}

-(void)checkContractWithAddress:(NSString *) contractAddress
                     andHandler:(ExistingContractHandler) completion {
    
    [SLocator.requestManager checkExistsContractWithAddress:contractAddress withSuccessHandler:^(id responseObject) {
        
        BOOL exist = [responseObject[@"exists"] boolValue];
        completion(exist, nil);
        
    } andFailureHandler:^(NSError *error, NSString *message) {
        
        completion(nil, error);
    }];
}







@end
