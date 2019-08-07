//
//  TabBarControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 06.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TabBarControllerDark.h"

@interface TabBarControllerDark ()

@end

@implementation TabBarControllerDark

- (void)viewDidLoad {

	[super viewDidLoad];
	[self configTabBar];
}

#pragma mark - Configuration

- (void)configTabBar {

	self.tabBar.translucent = NO;
	self.tabBar.tintColor = customBlueColor ();
	self.tabBar.barTintColor = customBlackColor ();
}

- (void)configTabsWithSend:(UIViewController *) sendController
					wallet:(UIViewController *) walletController
				   profile:(UIViewController *) profileController {

	[self setViewControllers:@[walletController, profileController, sendController] animated:YES];

	profileController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Profile", "Tabs") image:[UIImage imageNamed:@"profile"] tag:0];
	walletController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Wallet", "Tabs") image:[UIImage imageNamed:@"history"] tag:1];
	sendController.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Send", "Tabs") image:[UIImage imageNamed:@"send"] tag:2];
	[profileController.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
	[walletController.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
    [sendController.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
}

#pragma mark TabbarOutput

- (void)setControllerForSend:(UIViewController *) sendController
				   forWallet:(UIViewController *) walletController
				  forProfile:(UIViewController *) profileController {

	[self configTabsWithSend:sendController wallet:walletController profile:profileController];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleDefault;
}


@end
