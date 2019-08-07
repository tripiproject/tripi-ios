//
//  TRIPIParagrafTagCell.m
//  tripi wallet
//
//  Created by Heaving Line on 23.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIParagrafTagCell.h"


NSString *const TRIPIParagrafTagCellReuseIdentifire = @"TRIPIParagrafTagCellReuseIdentifire";

@implementation TRIPIParagrafTagCell

- (UIFont *)boldFont {

	return [UIFont fontWithName:@"simplonmono-medium" size:18];
}

- (UIFont *)regularFont {
	return [UIFont fontWithName:@"simplonmono-regular" size:16];
}

- (UIColor *)linkColor {
	return customRedColor ();
}

- (UIColor *)textColor {
	return customBlueColor ();
}

- (CGFloat)calculateSelfHeight {

	UITextView *calculationView = [[UITextView alloc] init];
	[calculationView setAttributedText:self.textView.attributedText];
	CGSize size = [calculationView sizeThatFits:CGSizeMake (self.textView.frame.size.width, FLT_MAX)];
	return ceilf (size.height);
}

@end
