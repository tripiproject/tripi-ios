//
//  HistoryOverviewTableCell.h
//  tripi wallet
//
//  Created by Heaving Line on 07.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *historyOverviewTableCellIdentifier = @"HistoryOverviewTableCellIdentifire";


@protocol HistoryOverviewTableCellDelegate <NSObject>

- (void)didPressedCopyWithValue:(NSString*) value;

@end

@interface HistoryOverviewTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueTextLabel;
@property (weak, nonatomic) id <HistoryOverviewTableCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *button;

-(void)sizeToFitLabels;

@end
