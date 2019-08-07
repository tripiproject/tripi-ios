//
//  BorderedLabel.h
//  tripi wallet
//
//  Created by Heaving Line on 23.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BorderedLabel : UILabel

@property (nonatomic, readonly) UIView *borderView;

- (UIColor *)getBorderColor;

- (UIColor *)getBackroundColor;

- (UIView *)getBorderView;

- (CGFloat)getInsets;

@end
