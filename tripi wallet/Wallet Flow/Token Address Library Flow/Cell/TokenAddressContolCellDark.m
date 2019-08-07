//
//  TokenAddressContolCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 03.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenAddressContolCellDark.h"

@implementation TokenAddressContolCellDark

- (void)awakeFromNib {

	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {

	[super setSelected:selected animated:animated];

	self.symbolLabel.textColor =
			self.valueLabel.textColor =
					self.addressLabel.textColor = selected ? customBlackColor () : customBlueColor ();
}

@end
