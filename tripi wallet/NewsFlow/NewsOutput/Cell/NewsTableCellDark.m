//
//  NewsTableCellDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 21.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsTableCellDark.h"

@implementation NewsTableCellDark

- (void)awakeFromNib {

	[super awakeFromNib];

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
