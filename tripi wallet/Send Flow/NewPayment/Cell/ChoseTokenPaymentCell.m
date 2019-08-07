//
//  ChoseTokenPaymentCell.m
//  tripi wallet
//
//  Created by Heaving Line on 25.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChoseTokenPaymentCell.h"

@implementation ChoseTokenPaymentCell

- (void)layoutSubviews {
	[super layoutSubviews];

	CGSize size = [self.longBalance sizeWithAttributes:@{NSFontAttributeName: self.mainBalance.font}];

	if (size.width > self.mainBalance.bounds.size.width) {
		self.mainBalance.text = self.shortBalance;
	} else {
		self.mainBalance.text = self.longBalance;
	}
}

@end
