//
//  AbiParameterTypeFixedBytes.m
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation AbiParameterTypeFixedBytes

@synthesize type;

-(ParameterTypeFromAbi)type {
    return FixedBytes;
}

@end
