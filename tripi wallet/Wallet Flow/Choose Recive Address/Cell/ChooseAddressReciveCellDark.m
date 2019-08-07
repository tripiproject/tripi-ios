//
//  ChooseAddressReciveCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 23.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChooseAddressReciveCellDark.h"

@implementation ChooseAddressReciveCellDark

- (void)awakeFromNib {
	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {

	[super setSelected:selected animated:animated];

	if (selected) {
		self.addressLabel.textColor = customBlackColor ();
	} else {
		self.addressLabel.textColor = customBlueColor ();
	}
}

@end
