//
//  AbiParameterTypeFixedArray.h
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "AbiParameterTypeArray.h"

@interface AbiParameterTypeFixedArray : AbiParameterTypeArray

- (instancetype)initWithSize:(NSUInteger) size;

@end