//
//  TokenAddressContolCell.m
//  tripi wallet
//
//  Created by Heaving Line on 03.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenAddressContolCell.h"

@implementation TokenAddressContolCell

- (void)layoutSubviews {

	[super layoutSubviews];

	CGSize size = [self.valueLabel.text sizeWithAttributes:@{NSFontAttributeName: self.valueLabel.font}];
	if (size.width > self.valueLabel.bounds.size.width) {
		self.valueLabel.text = self.shortBalance;
	}
}

@end
