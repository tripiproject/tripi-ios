//
//  JKBigDecimal+Format.h
//  tripi wallet
//
//  Created by Heaving Line on 30.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "JKBigDecimal.h"

@interface JKBigDecimal (Format)

- (NSString *)shortFormatOfNumberWithPowerOfMinus10:(JKBigDecimal *) power;

- (NSString *)shortFormatOfNumberWithPowerOf10:(NSNumber *) power;

- (JKBigDecimal *)numberWithPowerOfMinus10:(JKBigDecimal *) power;

- (JKBigDecimal *)numberWithPowerOf10:(JKBigDecimal *) power;

- (NSString *)stringNumberWithPowerOfMinus10:(JKBigDecimal *) power;

- (NSString *)stringNumberWithPowerOf10:(JKBigDecimal *) power;

- (NSString *)shortFormatOfNumber;

@end
