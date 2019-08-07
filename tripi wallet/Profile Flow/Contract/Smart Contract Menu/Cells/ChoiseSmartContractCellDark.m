//
//  ChoiseSmartContractCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChoiseSmartContractCellDark.h"

@implementation ChoiseSmartContractCellDark

- (void)awakeFromNib {

	[super awakeFromNib];

	self.disclosure.tintColor = customBlueColor ();

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}


@end
