//
//  NSString+AES256.m
//  tripi wallet
//
//  Created by Heaving Line on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NSString+AES256.h"
#import "NSData+AES256.h"

@implementation NSString (AES256)

+ (NSString *)encryptString:(NSString *) plaintext withKey:(NSString *) key {

	NSData *data = [[plaintext dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptWithKey:key];
	return [data base64EncodedStringWithOptions:kNilOptions];
}

+ (NSString *)decryptString:(NSString *) ciphertext withKey:(NSString *) key {

	NSData *data = [[NSData alloc] initWithBase64EncodedString:ciphertext options:kNilOptions];
	return [[NSString alloc] initWithData:[data AES256DecryptWithKey:key] encoding:NSUTF8StringEncoding];
}

@end
