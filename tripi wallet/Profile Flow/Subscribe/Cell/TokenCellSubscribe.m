//
//  TokenCellSubscribe.m
//  tripi wallet
//
//  Created by Heaving Line on 03.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenCellSubscribe.h"

@interface TokenCellSubscribe ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topSeparatorHeight;
@end

@implementation TokenCellSubscribe

- (void)awakeFromNib {
	[super awakeFromNib];
}

- (void)updateConstraints {
	[super updateConstraints];
	self.topSeparatorHeight.constant = 0.5f;
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {
	[super setSelected:selected animated:animated];
}

@end
