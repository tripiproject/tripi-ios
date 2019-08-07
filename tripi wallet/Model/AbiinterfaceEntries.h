//
//  AbiinterfaceEntries.h
//  tripi wallet
//
//  Created by Heaving Line on 17.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbiParameterProtocol.h"
#import "AbiTypesProcessor.h"

@interface AbiinterfaceEntries : NSObject

@property (copy, nonatomic, readonly) NSString *name;
@property (strong, nonatomic, readonly) id <AbiParameterProtocol> type;
@property (copy, nonatomic, readonly) NSString *typeAsString;

- (instancetype)initWithObject:(id) object;

@end
