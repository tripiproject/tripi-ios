//
//  NubersTokenView.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 29.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NubersTokenView.h"

@implementation NubersTokenView

- (void)layoutSubviews {

	[super layoutSubviews];

	CGSize size = [self.initialSupplyLabel.text sizeWithAttributes:@{NSFontAttributeName: self.initialSupplyLabel.font}];
	if (size.width > self.initialSupplyLabel.bounds.size.width) {
		self.initialSupplyLabel.text = self.shortTotalSupply;
	}
}


@end
