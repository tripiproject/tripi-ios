//
//  TRIPIParagrafTagCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 24.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIParagrafTagCellLight.h"

@implementation TRIPIParagrafTagCellLight

- (UIFont *)boldFont {

	return [UIFont fontWithName:@"ProximaNova-Bold" size:16];
}

- (UIFont *)regularFont {
	return [UIFont fontWithName:@"ProximaNova-Light" size:14];
}

- (UIColor *)linkColor {
	return lightGreenColor ();
}

- (UIColor *)textColor {
	return lightDarkGrayColor ();
}

@end
