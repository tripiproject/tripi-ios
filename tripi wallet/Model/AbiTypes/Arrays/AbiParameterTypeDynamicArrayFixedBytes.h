//
//  AbiParameterTypeDynamicArrayFixedBytes.h
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "AbiParameterTypeDynamicElementaryArray.h"

@interface AbiParameterTypeDynamicArrayFixedBytes : AbiParameterTypeDynamicElementaryArray

@property (assign, nonatomic) NSInteger elementSize;

- (instancetype)initWithSizeOfElements:(NSUInteger) elementSize;

@end
