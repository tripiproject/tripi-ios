//
//  TRIPIImageTagCell.m
//  tripi wallet
//
//  Created by Heaving Line on 20.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIImageTagCell.h"

NSString *const TRIPIImageTagCellReuseIdentifire = @"TRIPIImageTagCellReuseIdentifire";

@interface TRIPIImageTagCell ()


@end

@implementation TRIPIImageTagCell

- (void)prepareForReuse {

	[super prepareForReuse];
	self.tagImageView.contentMode = UIViewContentModeCenter;
	self.tagImageView.image = [UIImage imageNamed:@"news-placehodler"];
}


- (CGSize)prefferedSize {

	float cellWidth = [[UIScreen mainScreen] bounds].size.width - 10 - 10;
	float ratio = cellWidth / 355.f;
	float cellHeight = ratio * 192;
	return CGSizeMake (cellWidth, cellHeight);
}

@end
