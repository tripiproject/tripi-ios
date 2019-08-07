//
//  AbiParameterPrimitiveType.h
//  tripi wallet
//
//  Created by Heaving Line on 30.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbiParameterProtocol.h"

@interface AbiParameterPrimitiveType : NSObject <AbiParameterProtocol>

- (instancetype)initWithSize:(NSUInteger) size;

@end
