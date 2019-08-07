//
//  ShareTokenPopUpViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ShareTokenPopUpViewControllerDark.h"

@interface ShareTokenPopUpViewControllerDark ()

@end

@implementation ShareTokenPopUpViewControllerDark

- (void)viewDidLoad {
	[super viewDidLoad];

	self.abiTextView.layer.borderWidth = 1.0f;
	self.abiTextView.layer.borderColor = customBlackColor ().CGColor;
}

@end
