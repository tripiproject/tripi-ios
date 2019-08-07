//
//  LightBlueGrayBorderView.m
//  tripi wallet
//
//  Created by Heaving Line on 24.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LightBlueGrayBorderView.h"

@implementation LightBlueGrayBorderView

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

	self.layer.borderColor = lightBlueColor ().CGColor;
	self.layer.borderWidth = 1;
}

@end
