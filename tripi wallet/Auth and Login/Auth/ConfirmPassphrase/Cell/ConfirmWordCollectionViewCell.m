//
//  ConfirmWordCollectionViewCell.m
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ConfirmWordCollectionViewCell.h"

@interface ConfirmWordCollectionViewCell ()

@end

NSString* confirmWordCollectionViewCellIdentifire = @"confirmWordCollectionViewCellIdentifire";

@implementation ConfirmWordCollectionViewCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    [self configTextLabel];
}

- (void)configTextLabel {
    
    self.backView.layer.borderWidth = 1;
    self.backView.layer.borderColor = lightGreenColor().CGColor;
    self.backView.layer.cornerRadius = 5;
    self.backView.layer.masksToBounds = YES;
    self.backView.clipsToBounds = YES;
}


@end
