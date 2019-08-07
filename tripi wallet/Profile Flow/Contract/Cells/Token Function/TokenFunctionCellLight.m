//
//  TokenFunctionCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 02.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenFunctionCellLight.h"

@implementation TokenFunctionCellLight

- (void)awakeFromNib {

	[super awakeFromNib];
	self.disclousere.tintColor = lightBlackColor ();

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
