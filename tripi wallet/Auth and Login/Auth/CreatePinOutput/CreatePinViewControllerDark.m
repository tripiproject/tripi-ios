//
//  CreatePinViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CreatePinViewControllerDark.h"

@interface CreatePinViewControllerDark ()

@end

@implementation CreatePinViewControllerDark

- (void)configPasswordView {

	[self.passwordView setStyle:DarkStyle lenght:LongType];
	self.passwordView.delegate = self;
}

@end
