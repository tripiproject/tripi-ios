//
//  NSString+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 23.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

+ (NSString *)valueForKey:(NSString *) key fromQueryItems:(NSArray *) queryItems;

+ (NSData *)dataFromHexString:(NSString *) string;

+ (NSString *)hexadecimalString:(NSData *) data;

+ (NSString *)invertHex:(NSString *) hexString;

+ (NSString *)stringFromCamelCase:(NSString *) camelString;

+ (NSString *)randomStringWithLength:(int) len;

- (NSDate *)date;

- (BOOL)isDecimalString;

- (NSString*)firstMatchedStringWithPattern:(NSString*) pattern;

@end
