//
//  NSNumber+Format.h
//  tripi wallet
//
//  Created by Heaving Line on 07.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Format)

- (NSString *)shortFormatOfNumberWithPowerOfMinus10:(NSNumber *) power;

- (NSString *)shortFormatOfNumberWithPowerOf10:(NSNumber *) power;

- (NSDecimalNumber *)numberWithPowerOfMinus10:(NSNumber *) power;

- (NSDecimalNumber *)numberWithPowerOf10:(NSNumber *) power;

- (NSString *)stringNumberWithPowerOfMinus10:(NSNumber *) power;

- (NSString *)stringNumberWithPowerOf10:(NSNumber *) power;

- (NSString *)shortFormatOfNumber;

@end
