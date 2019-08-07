//
//  NSDecimalNumber+Comparison.m
//  tripi wallet
//
//  Created by Heaving Line  on 25.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NSDecimalNumber+Comparison.h"

@implementation NSDecimalNumber (Comparison)

- (BOOL)isLessThan:(NSDecimalNumber *) decimalNumber {
	return [self compare:decimalNumber] == NSOrderedAscending;
}

- (BOOL)isLessThanOrEqualTo:(NSDecimalNumber *) decimalNumber {
	return [self compare:decimalNumber] != NSOrderedDescending;
}

- (BOOL)isGreaterThan:(NSDecimalNumber *) decimalNumber {
	return [self compare:decimalNumber] == NSOrderedDescending;
}

- (BOOL)isGreaterThanOrEqualTo:(NSDecimalNumber *) decimalNumber {
	return [self compare:decimalNumber] != NSOrderedAscending;
}

- (BOOL)isEqualToDecimalNumber:(NSDecimalNumber *) decimalNumber {

	return [self compare:decimalNumber] == NSOrderedSame;
}

@end
