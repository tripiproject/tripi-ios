//
//  NSData+Extension.m
//  tripi wallet
//
//  Created by Heaving Line on 18.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NSData+Extension.h"

@implementation NSData (Extension)

+ (NSData *)reverseData:(NSData *) data {
	const char *bytes = [data bytes];
	int idx = (int)([data length] - 1);
	char *reversedBytes = calloc (sizeof (char), [data length]);
	for (int i = 0; i < [data length]; i++) {
		reversedBytes[idx--] = bytes[i];
	}
	NSData *reversedData = [NSData dataWithBytes:reversedBytes length:[data length]];
	free (reversedBytes);
	return reversedData;
}

+ (NSData *)dataWithValue:(NSValue *) value {

	NSUInteger size;
	const char *encoding = [value objCType];
	NSGetSizeAndAlignment (encoding, &size, NULL);

	void *ptr = malloc (size);
	[value getValue:ptr];
	NSData *data = [NSData dataWithBytes:ptr length:size];
	free (ptr);

	return data;
}

@end
