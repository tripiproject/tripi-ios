//
//  LoginCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LoginCoordinator;

@protocol LoginCoordinatorDelegate <NSObject>

- (void)coordinatorDidLogin:(LoginCoordinator *) coordinator;

- (void)coordinatorDidCanceledLogin:(LoginCoordinator *) coordinator;

@end

@interface LoginCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <LoginCoordinatorDelegate> delegate;

- (instancetype)initWithParentViewContainer:(UIViewController *) containerViewController;

@end
