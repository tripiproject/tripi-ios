//
//  TabBarCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 02.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCoordinator.h"
#import "TabBarController.h"


@protocol TabBarCoordinatorDelegate <NSObject>

@required
- (void)createPaymentFromSendInfoItem:(SendInfoItem *) item;

@end

@protocol ApplicationCoordinatorDelegate;

@interface TabBarCoordinator : BaseCoordinator <Coordinatorable, TabBarCoordinatorDelegate, TabbarOutputDelegate>

@property (weak, nonatomic) id <ApplicationCoordinatorDelegate> delegate;

- (instancetype)initWithTabBarController:(UITabBarController <TabbarOutput> *) tabBarController;

- (void)startFromSendWithSendInfoItem:(SendInfoItem *) item;

- (void)showControllerByIndex:(NSInteger) index;

- (UIViewController *)getViewControllerByIndex:(NSInteger) index;

@end
