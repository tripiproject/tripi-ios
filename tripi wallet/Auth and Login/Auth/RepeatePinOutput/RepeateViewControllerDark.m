//
//  RepeateViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "RepeateViewControllerDark.h"

@interface RepeateViewControllerDark ()

@end

@implementation RepeateViewControllerDark

- (void)configPasswordView {

	[self.passwordView setStyle:DarkStyle lenght:LongType];
	self.passwordView.delegate = self;
}

@end
