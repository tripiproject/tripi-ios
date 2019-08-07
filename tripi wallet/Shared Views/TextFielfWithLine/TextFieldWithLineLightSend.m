//
//  TextFieldWithLineLightSend.m
//  tripi wallet
//
//  Created by Heaving Line on 26.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TextFieldWithLineLightSend.h"

@implementation TextFieldWithLineLightSend

- (UIColor *)getUnderlineColorDeselected {
	return lightTextFieldLineDeselected ();
}

- (UIColor *)getUnderlineColorSelected {
	return lightGreenColor ();
}

- (UIColor *)getPlaceholderColor {
	return [UIColor colorWithRed:78 / 255.f green:93 / 255.f blue:111 / 255.f alpha:0.6];
}

- (UIFont *)getPlaceholderFont {
	return [UIFont fontWithName:@"ProximaNova-Regular" size:self.font.pointSize];
}

@end
