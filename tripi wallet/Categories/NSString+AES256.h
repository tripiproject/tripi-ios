//
//  NSString+AES256.h
//  tripi wallet
//
//  Created by Heaving Line on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES256)

+ (NSString *)encryptString:(NSString *) plaintext withKey:(NSString *) key;

+ (NSString *)decryptString:(NSString *) ciphertext withKey:(NSString *) key;

@end
