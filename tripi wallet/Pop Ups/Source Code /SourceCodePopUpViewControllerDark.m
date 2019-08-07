//
//  SourceCodePopUpViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 21.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SourceCodePopUpViewControllerDark.h"

@interface SourceCodePopUpViewControllerDark ()

@end

@implementation SourceCodePopUpViewControllerDark

- (void)setupTextView {

	self.textView.layer.borderWidth = 1.0f;
	self.textView.layer.borderColor = customBlackColor ().CGColor;
}

@end
