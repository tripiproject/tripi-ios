//
//  InputTextView.m
//  tripi wallet
//
//  Created by Heaving Line on 22.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "InputTextView.h"

@interface InputTextView ()

@property (nonatomic) UIView *borderView;

@end

@implementation InputTextView

- (instancetype)initWithCoder:(NSCoder *) aDecoder {

	self = [super initWithCoder:aDecoder];
	if (self) {
		[self config];
	}
	return self;
}

- (void)layoutSubviews {
	[super layoutSubviews];
}

#pragma mark - Config

- (void)config {

	self.layer.borderColor = customBlueColor ().CGColor;
	self.layer.borderWidth = 1;
	self.textContainerInset = UIEdgeInsetsMake (6, 4, 6, 4);
}

- (void)setEditingMode:(BOOL) editing {
}


@end
