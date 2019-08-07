//
//  BaseCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 02.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coordinatorable.h"

@interface BaseCoordinator : NSObject <Coordinatorable>

- (void)addDependency:(id <Coordinatorable>) coordinator;

- (void)removeDependency:(id <Coordinatorable>) coordinator;

- (void)removeAllDependencys;

@end
