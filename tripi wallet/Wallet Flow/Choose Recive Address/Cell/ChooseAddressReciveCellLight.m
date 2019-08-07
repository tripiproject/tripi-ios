//
//  ChooseAddressReciveCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 23.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChooseAddressReciveCellLight.h"

@implementation ChooseAddressReciveCellLight

- (void)awakeFromNib {
	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
