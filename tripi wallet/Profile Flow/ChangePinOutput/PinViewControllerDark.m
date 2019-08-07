//
//  PinViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 26.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PinViewControllerDark.h"

@interface PinViewControllerDark ()

@end

@implementation PinViewControllerDark

- (void)configPasswordView {

	[self.passwordView setStyle:DarkStyle lenght:SLocator.appSettings.isLongPin ? LongType : ShortType];
	self.passwordView.delegate = self;
}

@end
