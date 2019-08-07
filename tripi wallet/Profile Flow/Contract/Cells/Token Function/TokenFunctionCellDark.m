//
//  TokenFunctionCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 02.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenFunctionCellDark.h"

@implementation TokenFunctionCellDark

- (void)awakeFromNib {
	[super awakeFromNib];
	self.disclousere.tintColor = customBlueColor ();

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
