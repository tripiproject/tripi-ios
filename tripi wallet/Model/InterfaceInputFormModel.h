//
//  InterphaseInputFormModel.h
//  tripi wallet
//
//  Created by Heaving Line on 16.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbiinterfaceItem;

@interface InterfaceInputFormModel : NSObject

@property (strong, nonatomic, readonly) NSMutableArray<AbiinterfaceItem *> *functionItems;
@property (strong, nonatomic, readonly) NSMutableArray<AbiinterfaceItem *> *propertyItems;
@property (strong, nonatomic, readonly) AbiinterfaceItem *constructorItem;

- (instancetype)initWithAbi:(NSArray *) abi;

- (BOOL)contains:(InterfaceInputFormModel *) inerface;

@end
