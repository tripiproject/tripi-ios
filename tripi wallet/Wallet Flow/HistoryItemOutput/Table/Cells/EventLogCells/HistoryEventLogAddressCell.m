//
//  HistoryEventLogAddressCell.m
//  tripi wallet
//
//  Created by Heaving Line on 07.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "HistoryEventLogAddressCell.h"

@interface HistoryEventLogAddressCell ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *valueLabelHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelHeight;

@end

@implementation HistoryEventLogAddressCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)sizeToFitLabels {
    
    [self.valueTextLabel sizeToFit];
    CGFloat height = self.valueTextLabel.frame.size.height;
    self.valueLabelHeight.constant = height;
    
    [self.titleTextLabel sizeToFit];
    height = self.titleTextLabel.frame.size.height;
    self.titleLabelHeight.constant = height;
}

@end
