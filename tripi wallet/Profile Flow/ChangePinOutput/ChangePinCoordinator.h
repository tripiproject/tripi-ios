//
//  ChangePinCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 26.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ChangePinCoordinator;

@protocol ChangePinCoordinatorDelegate <NSObject>

- (void)coordinatorDidFinish:(ChangePinCoordinator *) coordinator;

@end

@interface ChangePinCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <ChangePinCoordinatorDelegate> delegate;

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;

@end
