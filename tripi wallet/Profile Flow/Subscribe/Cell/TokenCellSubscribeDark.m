//
//  TokenCellSubscribeDark.m
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenCellSubscribeDark.h"

@implementation TokenCellSubscribeDark

- (void)awakeFromNib {
	[super awakeFromNib];
	self.indicator.tintColor = customBlueColor ();
}

-(void)prepareForReuse {
    [super prepareForReuse];
    self.topSeparator.backgroundColor = customBlueColor ();
    self.label.textColor = customBlueColor ();
    self.indicator.tintColor = customBlueColor ();
}

@end
