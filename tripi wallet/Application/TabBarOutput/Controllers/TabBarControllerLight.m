//
//  TabBarControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 06.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TabBarControllerLight.h"

@interface TabBarControllerLight ()

@end

@implementation TabBarControllerLight

- (void)viewDidLoad {

	[super viewDidLoad];
	[self configTabBar];
}

#pragma mark - Configuration

- (void)configTabBar {

	self.tabBar.translucent = NO;
	self.tabBar.tintColor = lightDarkGrayColor ();
	self.tabBar.barTintColor = lightBlueColor ();
}

- (void)configTabsWithSend:(UIViewController *) sendController
					wallet:(UIViewController *) walletController
				   profile:(UIViewController *) profileController {

	UIViewController *send = [SLocator.controllersFactory sendFlowTab];
	UIViewController *profile = [SLocator.controllersFactory profileFlowTab];
	UIViewController *wallet = [SLocator.controllersFactory walletFlowTab];

	[self setViewControllers:@[wallet, profile, send] animated:YES];

	profile.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Profile", "Tabs") image:[UIImage imageNamed:@"ic-profile-light"] tag:0];
	wallet.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Wallet", "Tabs") image:[UIImage imageNamed:@"ic-wallet-light"] tag:1];
	send.tabBarItem = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Send", "Tabs") image:[UIImage imageNamed:@"ic-send-light"] tag:2];

	[profile.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
	[wallet.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
    [send.tabBarItem setTitlePositionAdjustment:UIOffsetMake (0, -2)];
}

#pragma mark TabbarOutput

- (void)setControllerForSend:(UIViewController *) sendController
				   forWallet:(UIViewController *) walletController
				  forProfile:(UIViewController *) profileController {

	[self configTabsWithSend:sendController wallet:walletController profile:profileController];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}


@end
