//
//  SecurityPopupViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 31.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SecurityPopupViewControllerLight.h"

@interface SecurityPopupViewControllerLight ()

@end

@implementation SecurityPopupViewControllerLight

- (void)configPasswordView {

	[self.passwordView setStyle:LightPopupStyle
						 lenght:SLocator.appSettings.isLongPin ? LongType : ShortType];

	self.passwordView.delegate = self;
}

@end
