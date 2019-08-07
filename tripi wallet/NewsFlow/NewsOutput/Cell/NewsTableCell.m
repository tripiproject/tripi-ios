//
//  NewsTableCell.m
//  tripi wallet
//
//  Created by Heaving Line on 07.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsTableCell.h"

@implementation NewsTableCell

- (void)prepareForReuse {

	[super prepareForReuse];
	self.titleLabel.text = @"";
	self.descriptionLabel.text = @"";
	self.dateLabel.text = @"";
}

#pragma mark - Public Methods


@end
