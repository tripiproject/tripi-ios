//
//  CheckboxButtonLight.m
//  tripi wallet
//
//  Created by Heaving Line on 31.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CheckboxButtonLight.h"

@implementation CheckboxButtonLight

- (UIColor *)fillColorForSelectedState {
	return lightGreenColor ();
}

- (UIColor *)fillColorForDeselectedState {
	return [UIColor whiteColor];
}

- (UIColor *)borderColorForDeselectedState {
	return lightGreenColor ();
}

- (UIColor *)borderColorForSelectedState {
	return lightGreenColor ();
}

- (UIColor *)indicatorTintColor {
	return [UIColor whiteColor];
}

@end
