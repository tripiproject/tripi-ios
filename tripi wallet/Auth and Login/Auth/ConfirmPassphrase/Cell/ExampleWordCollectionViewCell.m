//
//  ExampleWordCollectionViewCell.m
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ExampleWordCollectionViewCell.h"

@interface ExampleWordCollectionViewCell()


@end

NSString* exampleWordCollectionViewCellIdentifire = @"exampleWordCollectionViewCellIdentifire";

@implementation ExampleWordCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configTextLabel];
}

- (void)configTextLabel {
    
    self.backView.layer.cornerRadius = 5;
    self.backView.layer.masksToBounds = YES;
    self.backView.clipsToBounds = YES;
}

@end
