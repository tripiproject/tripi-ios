//
//  QStoreSearchTableViewCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 19.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "QStoreSearchTableViewCellLight.h"

@implementation QStoreSearchTableViewCellLight

- (void)awakeFromNib {
	[super awakeFromNib];

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (BOOL)isLight {
	return YES;
}

@end
