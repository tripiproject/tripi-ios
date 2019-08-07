//
//  AbiParameterTypeFixedArray.m
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation AbiParameterTypeFixedArray

@synthesize size = _size;

- (instancetype)initWithSize:(NSUInteger) size {

	self = [super init];
	if (self) {
		_size = size;
	}
	return self;
}

@end
