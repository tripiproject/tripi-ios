//
//  NSObject+Catch.m
//  tripi wallet
//
//  Created by Heaving Line on 21.05.17.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "NSNull+Catch.h"

@implementation NSNull (Catch)


- (NSMethodSignature *)methodSignatureForSelector:(SEL) aSelector {
	NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];

	if (!signature) {
		signature = [NSMethodSignature signatureWithObjCTypes:"@:"];
	}

	return signature;
}

- (void)forwardInvocation:(NSInvocation *) anInvocation {
	DLog(@"NULL EXEPTION");
	//[NSException raise:NSInvalidArgumentException format:@"NULL EXEPTION"];
}

- (NSNumber *)roundedNumberWithScale:(NSInteger) scale {
	return [NSNumber new];
}

@end
