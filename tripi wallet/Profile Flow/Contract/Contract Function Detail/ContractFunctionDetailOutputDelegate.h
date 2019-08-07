//
//  ContractFunctionDetailOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbiinterfaceItem.h"
#import "ResultTokenInputsModel.h"

@protocol ContractFunctionDetailOutputDelegate <NSObject>

@optional
- (void)didCallFunctionWithItem:(AbiinterfaceItem *) item
					   andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                      andAmount:(TRIPIBigNumber *) amount
                    fromAddress:(NSString*) fromAddress
					   andToken:(Contract *) token
						 andFee:(TRIPIBigNumber *) fee
					andGasPrice:(TRIPIBigNumber *) gasPrice
					andGasLimit:(TRIPIBigNumber *) gasLimit;

- (void)didQueryFunctionWithItem:(AbiinterfaceItem *) item
                        andParam:(NSArray<ResultTokenInputsModel *> *) inputs
                        andToken:(Contract *) token;


@end
