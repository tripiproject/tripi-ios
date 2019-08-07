//
//  TabBarController.m
//  tripi wallet
//
//  Created by Heaving Line on 26.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "TabBarController.h"
#import "NewPaymentDarkViewController.h"

@interface TabBarController () <UITabBarControllerDelegate, Presentable>

@end

@implementation TabBarController

#pragma mark - Life Cycle

- (void)viewDidLoad {

	[super viewDidLoad];
	self.delegate = self;
}

- (void)setControllerForSend:(UIViewController *) sendController
				   forWallet:(UIViewController *) walletController
				  forProfile:(UIViewController *) profileController {

	[self setViewControllers:@[walletController, profileController, sendController] animated:YES];
}

- (void)viewWillAppear:(BOOL) animated {

	[super viewWillAppear:animated];
	//select controller
	if ([self.customizableViewControllers.firstObject isKindOfClass:[UINavigationController class]] && !self.isReload) {
		[self.outputDelegate didSelecteWalletTabWithController:self.customizableViewControllers.firstObject];
	}
}

#pragma mark - Configuration

- (BOOL)tabBarController:(UITabBarController *) tabBarController shouldSelectViewController:(UIViewController *) viewController {

	return YES;
}

- (void)tabBarController:(UITabBarController *) tabBarController didSelectViewController:(UIViewController *) viewController {
	if (self.selectedIndex == 0) {
		[self.outputDelegate didSelecteWalletTabWithController:viewController];
	} else if (self.selectedIndex == 1) {
		[self.outputDelegate didSelecteProfileTabWithController:viewController];
	} else if (self.selectedIndex == 2) {
        [self.outputDelegate didSelecteSendTabWithController:viewController];
    }

}

- (void)selectSendController {

	[self.outputDelegate didSelecteSendTabWithController:[self.viewControllers lastObject]];
	self.selectedIndex = 2;
}

@end
