//
//  LibraryTableViewCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LibraryTableViewCellDark.h"

@implementation LibraryTableViewCellDark

- (void)awakeFromNib {
	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {

	[super setSelected:selected animated:animated];

	self.nameLabel.textColor = selected ? customBlackColor () : customBlueColor ();
}

@end
