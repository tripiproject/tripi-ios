//
//  NewsNavigationCoordinator.m
//  tripi wallet
//
//  Created by Heaving Line on 26.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "NewsNavigationController.h"

@interface NewsNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation NewsNavigationController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationBar.hidden = YES;
	self.interactivePopGestureRecognizer.delegate = self;
	self.interactivePopGestureRecognizer.enabled = NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {

	return SLocator.appSettings.isDarkTheme ? UIStatusBarStyleDefault : UIStatusBarStyleLightContent;
}

@end
