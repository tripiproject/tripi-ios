//
//  NSDecimalNumber+Comparison.h
//  tripi wallet
//
//  Created by Heaving Line  on 25.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (Comparison)

- (BOOL)isLessThan:(NSDecimalNumber *) decimalNumber;

- (BOOL)isLessThanOrEqualTo:(NSDecimalNumber *) decimalNumber;

- (BOOL)isGreaterThan:(NSDecimalNumber *) decimalNumber;

- (BOOL)isGreaterThanOrEqualTo:(NSDecimalNumber *) decimalNumber;

- (BOOL)isEqualToDecimalNumber:(NSDecimalNumber *) decimalNumber;

@end
