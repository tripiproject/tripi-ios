//
//  NewsTableCellLight.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 21.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsTableCellLight.h"

@implementation NewsTableCellLight


- (void)awakeFromNib {

	[super awakeFromNib];

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}

@end
