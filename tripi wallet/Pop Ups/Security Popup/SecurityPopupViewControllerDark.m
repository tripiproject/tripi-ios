//
//  SecurityPopupViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 31.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SecurityPopupViewControllerDark.h"

@interface SecurityPopupViewControllerDark ()

@end

@implementation SecurityPopupViewControllerDark

- (void)configPasswordView {

	[self.passwordView setStyle:DarkPopupStyle lenght:SLocator.appSettings.isLongPin ? LongType : ShortType];
	self.passwordView.delegate = self;
}

@end
