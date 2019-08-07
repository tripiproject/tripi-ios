//
//  ValueRepresentationEntity.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventLogHeader.h"

@interface ValueRepresentationEntity : NSObject

@property (assign, nonatomic) ConvertionAddressType type;

- (instancetype)initWithHexString:(NSString*) hex;

- (NSString*)valueDependsOnType;
- (NSString*)nameDependsOnType;

@end
