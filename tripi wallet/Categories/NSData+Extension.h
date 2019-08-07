//
//  NSData+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 18.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Extension)

+ (NSData *)reverseData:(NSData *) data;

+ (NSData *)dataWithValue:(NSValue *) value;

@end
