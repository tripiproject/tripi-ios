//
//  SmartContractListItemCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SmartContractListItemCellDark.h"

@implementation SmartContractListItemCellDark

- (void)awakeFromNib {

	[super awakeFromNib];

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
