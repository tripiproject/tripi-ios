//
//  TRIPIContractLableWithMargins.m
//  tripi wallet
//
//  Created by Heaving Line on 02.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIContractLableWithMargins.h"

@interface TRIPIContractLableWithMargins ()

@property (assign, nonatomic) UIEdgeInsets insets;

@end

@implementation TRIPIContractLableWithMargins

- (instancetype)initWithCoder:(NSCoder *) aDecoder {

	self = [super initWithCoder:aDecoder];

	if (self) {
		self.insets = UIEdgeInsetsMake (0, 4, 0, 4);
	}
	return self;
}

- (void)drawTextInRect:(CGRect) rect {

	[super drawTextInRect:UIEdgeInsetsInsetRect (rect, self.insets)];
}

- (CGSize)intrinsicContentSize {

	CGSize size = [super intrinsicContentSize];
	size.width += self.insets.left + self.insets.right;
	size.height += self.insets.top + self.insets.bottom;
	return size;
}

@end
