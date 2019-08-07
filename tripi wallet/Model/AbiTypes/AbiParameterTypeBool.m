//
//  AbiParameterTypeBool.m
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation AbiParameterTypeBool

- (NSInteger)maxValueLenght {

	return 1;
}

-(ParameterTypeFromAbi)type {
    return Bool;
}

@end
