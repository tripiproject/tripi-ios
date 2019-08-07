//
//  ChooseTokenPaymentCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChooseTokenPaymentCellLight.h"

@implementation ChooseTokenPaymentCellLight

- (void)awakeFromNib {
	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {

	[super setSelected:selected animated:animated];
}

@end
