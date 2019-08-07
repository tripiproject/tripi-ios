//
//  NewPaymentOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 04.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"
#import "NewPaymentOutputEntity.h"

@protocol NewPaymentOutputDelegate;

@protocol NewPaymentOutput <Presentable>

@property (weak, nonatomic) id <NewPaymentOutputDelegate> delegate;

- (void)updateWithEtity:(NewPaymentOutputEntity *) entity;

- (void)clearFields;

- (void)startEditingAddress;

- (void)setMinFee:(TRIPIBigNumber *) minFee andMaxFee:(TRIPIBigNumber *) maxFee;

- (void)setMinGasPrice:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max step:(long) step;

- (void)setMinGasLimit:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max standart:(TRIPIBigNumber *) standart step:(long) step;

@end
