//
//  ConfirmPinForExportViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 12.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ConfirmPinForExportViewControllerLight.h"

@interface ConfirmPinForExportViewControllerLight ()

@end

@implementation ConfirmPinForExportViewControllerLight


- (void)configPasswordView {

	[self.passwordView setStyle:LightStyle lenght:SLocator.appSettings.isLongPin ? LongType : ShortType];
	self.passwordView.delegate = self;
}

@end
