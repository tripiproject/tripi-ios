//
//  ContractCreationEndOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"
#import "ContractCreationEndOutputDelegate.h"
#import "ResultTokenInputsModel.h"

@protocol ContractCreationEndOutput <Presentable>

@property (weak, nonatomic) id <ContractCreationEndOutputDelegate> delegate;
@property (copy, nonatomic) NSArray<ResultTokenInputsModel *> *inputs;

- (void)showErrorPopUp:(NSString *) string;

- (void)showCompletedPopUp;

- (void)setMinFee:(TRIPIBigNumber *) minFee andMaxFee:(TRIPIBigNumber *) maxFee;

- (void)setMinGasPrice:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max step:(long) step;

- (void)setMinGasLimit:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max standart:(TRIPIBigNumber *) standart step:(long) step;

@end
