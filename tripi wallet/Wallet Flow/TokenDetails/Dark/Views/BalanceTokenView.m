//
//  BalanceTokenView.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 29.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BalanceTokenView.h"

@implementation BalanceTokenView

- (void)layoutSubviews {

	[super layoutSubviews];

	CGSize size = [self.longBalance sizeWithAttributes:@{NSFontAttributeName: self.balanceValueLabel.font}];

	if (size.width > self.balanceValueLabel.bounds.size.width) {
		self.balanceValueLabel.text = self.shortBalance;
	} else {
		self.balanceValueLabel.text = self.longBalance;
	}
}

@end
