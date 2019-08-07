//
//  BTCTransactionOutput+Address.m
//  tripi wallet
//
//  Created by Heaving Line on 17.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BTCTransactionOutput+Address.h"
#import <objc/runtime.h>

NSString const *keyOut = @"com.tripi.output.extension";

@implementation BTCTransactionOutput (Address)

- (void)setRunTimeAddress:(NSString *) runTimeAddress {

	objc_setAssociatedObject (self, &keyOut, runTimeAddress, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)runTimeAddress {

	return objc_getAssociatedObject (self, &keyOut);
}

@end
