//
//  FirstAuthViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "FirstAuthViewControllerLight.h"

@interface FirstAuthViewControllerLight ()

@end

@implementation FirstAuthViewControllerLight

- (void)viewDidLoad {
	[super viewDidLoad];
	[self configurateButtons];
}


#pragma mark - Configuration

- (void)configurateButtons {

	if (SLocator.walletManager.isSignedIn) {

		self.loginButton.hidden = NO;
		self.invitationTextLabel.text = NSLocalizedString(@"Login to TRIPI \nDon't have a wallet yet?", @"");
	} else {

		self.loginButton.hidden = YES;
		self.invitationTextLabel.text = NSLocalizedString(@"You don’t have a wallet yet.", @"");
	}
}

@end
