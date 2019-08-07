//
//  JKBigDecimal+Comparison.h
//  tripi wallet
//
//  Created by Heaving Line on 30.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "JKBigDecimal.h"

@interface JKBigDecimal (Comparison)

- (BOOL)isLessThan:(JKBigDecimal *) decimalNumber;

- (BOOL)isLessThanOrEqualTo:(JKBigDecimal *) decimalNumber;

- (BOOL)isGreaterThan:(JKBigDecimal *) decimalNumber;

- (BOOL)isGreaterThanOrEqualTo:(JKBigDecimal *) decimalNumber;

- (BOOL)isEqualToDecimalNumber:(JKBigDecimal *) decimalNumber;

- (BOOL)isEqualToInt:(int) i;

- (BOOL)isGreaterThanInt:(int) i;

- (BOOL)isGreaterThanOrEqualToInt:(int) i;

- (BOOL)isLessThanInt:(int) i;

- (BOOL)isLessThanOrEqualToInt:(int) i;

- (NSDecimalNumber *)decimalNumber;

- (NSDecimalNumber *)roundedNumberWithScale:(NSInteger) scale;

@end
