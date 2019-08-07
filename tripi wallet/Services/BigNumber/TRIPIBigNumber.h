//
//  TRIPIBigNumber.h
//  tripi wallet
//
//  Created by Heaving Line on 30.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKBigDecimal.h"

@interface TRIPIBigNumber : NSObject

@property (strong, nonatomic, readonly) JKBigDecimal *decimalContainer;

+ (instancetype)decimalWithString:(NSString *) string;

+ (instancetype)decimalWithInteger:(NSInteger) integer;

- (instancetype)initWithString:(NSString *) string;

- (instancetype)initWithInteger:(NSInteger) integer;


- (instancetype)add:(TRIPIBigNumber *) bigDecimal;

- (instancetype)subtract:(TRIPIBigNumber *) bigDecimal;

- (instancetype)multiply:(TRIPIBigNumber *) bigDecimal;

- (instancetype)divide:(TRIPIBigNumber *) bigDecimal;

- (instancetype)remainder:(TRIPIBigNumber *) bigInteger;

- (NSComparisonResult)compare:(TRIPIBigNumber *) other;

- (instancetype)pow:(unsigned int) exponent;

- (instancetype)negate;

- (instancetype)abs;

- (NSString *)stringValue;

- (NSInteger)integerValue;

- (NSString *)description;

- (int64_t)satoshiAmountValue;

- (NSInteger)tripiAmountValue;

@end

@interface TRIPIBigNumber (Comparison)

- (BOOL)isLessThan:(TRIPIBigNumber *) decimalNumber;

- (BOOL)isLessThanOrEqualTo:(TRIPIBigNumber *) decimalNumber;

- (BOOL)isGreaterThan:(TRIPIBigNumber *) decimalNumber;

- (BOOL)isGreaterThanOrEqualTo:(TRIPIBigNumber *) decimalNumber;

- (BOOL)isEqualToDecimalNumber:(TRIPIBigNumber *) decimalNumber;

- (BOOL)isEqualToInt:(int) i;

- (BOOL)isGreaterThanInt:(int) i;

- (BOOL)isGreaterThanOrEqualToInt:(int) i;

- (BOOL)isLessThanInt:(int) i;

- (BOOL)isLessThanOrEqualToInt:(int) i;

- (NSDecimalNumber *)decimalNumber;

- (TRIPIBigNumber *)roundedNumberWithScale:(NSInteger) scale;

@end

@interface TRIPIBigNumber (Format)

- (NSString *)shortFormatOfNumberWithPowerOfMinus10:(TRIPIBigNumber *) power;

- (NSString *)shortFormatOfNumberWithPowerOf10:(TRIPIBigNumber *) power;

- (TRIPIBigNumber *)numberWithPowerOfMinus10:(TRIPIBigNumber *) power;

- (TRIPIBigNumber *)numberWithPowerOf10:(TRIPIBigNumber *) power;

- (NSString *)stringNumberWithPowerOfMinus10:(TRIPIBigNumber *) power;

- (NSString *)stringNumberWithPowerOf10:(TRIPIBigNumber *) power;

- (NSString *)shortFormatOfNumber;

@end

@interface TRIPIBigNumber (Constants)

+ (TRIPIBigNumber*)maxBigNumberWithPowerOfTwo:(NSInteger) power isUnsigned:(BOOL) isUnsigned;

@end
