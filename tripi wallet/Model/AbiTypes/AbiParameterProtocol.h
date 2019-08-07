//
//  AbiParameterProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ParameterTypeFromAbi) {
    Sting,
    Array,
    Uint,
    Int,
    Bool,
    Bytes,
    Address,
    FixedBytes,
    Unknown
};

@protocol AbiParameterProtocol <NSObject>

@property (assign, nonatomic) ParameterTypeFromAbi type;

@optional
@property (assign, nonatomic) NSInteger size;

@end
