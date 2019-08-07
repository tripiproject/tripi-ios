//
//  BorderedLabelLight.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BorderedLabelLight.h"
#import "InnerShadowView.h"

@interface BorderedLabelLight ()

@property (nonatomic) CALayer *shadowLayer;

@end

@implementation BorderedLabelLight

- (UIColor *)getBorderColor {
	return [lightBlackColor78 () colorWithAlphaComponent:0.2f];
}

- (UIColor *)getBackroundColor {
	return lightBorderLabelBackroundColor ();
}

- (UIView *)getBorderView {
	return [InnerShadowView new];
}

- (CGFloat)getInsets {
	return 14.0f;
}

@end
