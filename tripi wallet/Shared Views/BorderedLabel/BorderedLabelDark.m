//
//  BorderedLabelDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BorderedLabelDark.h"

@implementation BorderedLabelDark

- (UIColor *)getBorderColor {
	return customBlueColor ();
}

- (UIColor *)getBackroundColor {
	return [UIColor clearColor];
}

- (UIView *)getBorderView {
	return [UIView new];
}

- (CGFloat)getInsets {
	return 7.0f;
}

@end
