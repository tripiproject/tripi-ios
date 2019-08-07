//
//  PaymentValuesManager.h
//  tripi wallet
//
//  Created by Vladimir Sharaev on 04.10.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

extern long const GasPriceStep;
extern long const GasLimitStep;

@interface PaymentValuesManager : NSObject

@property (nonatomic) TRIPIBigNumber *maxFee;
@property (nonatomic) TRIPIBigNumber *standartGasLimit;
@property (nonatomic) TRIPIBigNumber *standartGasLimitForCreateContract;
@property (nonatomic) TRIPIBigNumber *minGasLimit;
@property (nonatomic) TRIPIBigNumber *minGasPrice;
@property (nonatomic) TRIPIBigNumber *maxGasLimit;
@property (nonatomic) TRIPIBigNumber *maxGasPrice;

- (void)loadDGPInfo;

@end
