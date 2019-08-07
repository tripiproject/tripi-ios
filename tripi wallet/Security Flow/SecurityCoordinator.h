//
//  SecurityCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 29.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SecurityCoordinator;

@protocol SecurityCoordinatorDelegate <NSObject>

- (void)coordinatorDidPassSecurity:(SecurityCoordinator *) coordinator;

- (void)coordinatorDidCancelePassSecurity:(SecurityCoordinator *) coordinator;

@end

typedef NS_ENUM(NSInteger, SecurityCheckingType) {

	SendVerification,
	EnableTouchIdVerification
};

@interface SecurityCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <SecurityCoordinatorDelegate> delegate;
@property (assign, nonatomic) SecurityCheckingType type;

- (instancetype)initWithParentViewContainer:(UIViewController *) containerViewController;

- (void)cancelPin;

@end
