//
//  AbiParameterTypeDynamicArrayFixedBytes.m
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation AbiParameterTypeDynamicArrayFixedBytes

- (instancetype)initWithSizeOfElements:(NSUInteger) elementSize {

	self = [super init];
	if (self) {

		_elementSize = elementSize;
	}
	return self;
}

@end
