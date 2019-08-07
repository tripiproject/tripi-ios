//
//  AddressControlCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 02.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "AddressControlCellLight.h"

@interface AddressControlCellLight ()

@property (weak, nonatomic) IBOutlet UILabel *transferTextLabel;

@end

@implementation AddressControlCellLight

- (void)awakeFromNib {

	[super awakeFromNib];
	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = lightBlueColor ();
	[self setSelectedBackgroundView:bgColorView];
    
    self.transferTextLabel.text = NSLocalizedString(@"Transfer", @"");
}


@end
