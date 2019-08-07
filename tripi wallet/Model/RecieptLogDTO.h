//
//  RecieptDTO.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Log+CoreDataProperties.h"
#import "ValueRepresentationEntity.h"

@interface RecieptLogDTO : NSObject

@property (strong, nonatomic) NSString* contractAddress;
@property (strong, nonatomic) NSArray<ValueRepresentationEntity*>* data;
@property (strong, nonatomic) NSArray<ValueRepresentationEntity*>* topics;

-(instancetype)initWithLog:(Log*) log;

@end
