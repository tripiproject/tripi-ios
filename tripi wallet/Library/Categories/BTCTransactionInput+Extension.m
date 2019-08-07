//
//  BTCTransactionInput+Extension.m
//  tripi wallet
//
//  Created by Heaving Line on 17.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BTCTransactionInput+Extension.h"
#import <objc/runtime.h>

NSString const *keyIn = @"com.tripi.input.extension";

@implementation BTCTransactionInput (Extension)

- (void)setRunTimeAddress:(NSString *) runTimeAddress {

	objc_setAssociatedObject (self, &keyIn, runTimeAddress, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)runTimeAddress {

	return objc_getAssociatedObject (self, &keyIn);
}

@end
