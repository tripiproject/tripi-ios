//
//  TokenAddressContolCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 03.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenAddressContolCellLight.h"

@implementation TokenAddressContolCellLight

- (void)awakeFromNib {

	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}


@end
