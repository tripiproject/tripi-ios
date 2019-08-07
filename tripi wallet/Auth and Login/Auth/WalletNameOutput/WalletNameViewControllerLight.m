//
//  WalletNameViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletNameViewControllerLight.h"

@interface WalletNameViewControllerLight ()

@end

@implementation WalletNameViewControllerLight

- (void)keyboardWillShow:(NSNotification *) sender {

	CGRect end = [[sender userInfo][UIKeyboardFrameEndUserInfoKey] CGRectValue];
	self.buttonsBottomConstraint.constant = end.size.height + 20;
	[self.view layoutIfNeeded];
}

@end
