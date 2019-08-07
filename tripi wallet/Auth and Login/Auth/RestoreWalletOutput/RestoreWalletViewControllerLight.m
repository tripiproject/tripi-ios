//
//  RestoreWalletViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 19.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "RestoreWalletViewControllerLight.h"

@interface RestoreWalletViewControllerLight ()

@end

@implementation RestoreWalletViewControllerLight

- (void)keyboardWillShow:(NSNotification *) sender {

	CGRect end = [[sender userInfo][UIKeyboardFrameEndUserInfoKey] CGRectValue];
	self.bottomForButtonsConstraint.constant = end.size.height + 20;
	[self.view layoutIfNeeded];
}

@end
