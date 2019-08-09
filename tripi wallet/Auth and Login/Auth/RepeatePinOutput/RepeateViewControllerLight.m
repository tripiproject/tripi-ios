//
//  RepeateViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "RepeateViewControllerLight.h"

@interface RepeateViewControllerLight ()

@end

@implementation RepeateViewControllerLight

- (void)keyboardWillShow:(NSNotification *) sender {

	CGRect end = [[sender userInfo][UIKeyboardFrameEndUserInfoKey] CGRectValue];
	self.gradientViewBottomOffset.constant = end.size.height + 20;
	[self.view layoutIfNeeded];
}

- (void)configPasswordView {

	[self.passwordView setStyle:LightStyle lenght:LongType];
	self.passwordView.delegate = self;
}

@end