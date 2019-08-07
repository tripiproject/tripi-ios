//
//  SliderFeeView.h
//  tripi wallet
//
//  Created by Heaving Line on 21.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldWithLine.h"

@protocol SliderFeeViewDelegate

- (void)didChangeFeeSlider:(UISlider *) slider;

- (void)didChangeGasPriceSlider:(TRIPIBigNumber *) value;

- (void)didChangeGasLimiteSlider:(TRIPIBigNumber *) value;

@end


@interface SliderFeeView : UIView

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *minFeeLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxFeeLabel;
@property (weak, nonatomic) IBOutlet TextFieldWithLine *feeTextField;
@property (weak, nonatomic) id <SliderFeeViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet TextFieldWithLine *defaultAddressTextField;
@property (weak, nonatomic) IBOutlet UILabel *defaultAddressLabel;

- (void)setMinGasPrice:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max step:(long) step;

- (void)setMinGasLimit:(TRIPIBigNumber *) min andMax:(TRIPIBigNumber *) max standart:(TRIPIBigNumber *) standart step:(long) step;

@end
