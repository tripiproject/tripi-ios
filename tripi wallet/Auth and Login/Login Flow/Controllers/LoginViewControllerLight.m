//
//  LoginViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LoginViewControllerLight.h"

@interface LoginViewControllerLight ()

@end

@implementation LoginViewControllerLight

- (void)keyboardWillShow:(NSNotification *) sender {

	CGRect end = [[sender userInfo][UIKeyboardFrameEndUserInfoKey] CGRectValue];
	self.bottomConstraintForCancelButton.constant = end.size.height + 20;
	[self.view layoutIfNeeded];
}

- (void)configPasswordView {

	[self.passwordView setStyle:LightStyle lenght:SLocator.appSettings.isLongPin ? LongType : ShortType];
	self.passwordView.delegate = self;
}

@end
