//
//  ContractFunctionDetailOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContractFunctionDetailOutputDelegate.h"
#import "Presentable.h"
#import "AbiinterfaceItem.h"

@protocol ContractFunctionDetailOutput <Presentable>

@property (weak, nonatomic) id <ContractFunctionDetailOutputDelegate> delegate;
@property (strong, nonatomic) AbiinterfaceItem *function;
@property (nonatomic) BOOL fromQStore;
@property (weak, nonatomic) Contract *token;
@property (strong, nonatomic) NSArray <ContracBalancesObject *> *tokenBalancesInfo;

- (void)setQueryResult:(NSString *) result;

- (void)showLoader;

- (void)hideLoader;

- (void)showCompletedPopUp;

- (void)showErrorPopUp:(NSString *) message;

- (void)setMinFee:(TRIPIBigNumber *) minFee andMaxFee:(TRIPIBigNumber *) maxFee;

- (void)setMinGasPrice:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max step:(long) step;

- (void)setMinGasLimit:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max standart:(TRIPIBigNumber *) standart step:(long) step;

- (void)showNotEnoughFeeAlertWithEstimatedFee:(TRIPIBigNumber *) estimatedFee;

@end
