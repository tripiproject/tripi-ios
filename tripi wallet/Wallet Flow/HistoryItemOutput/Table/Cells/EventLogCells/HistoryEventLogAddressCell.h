//
//  HistoryEventLogAddressCell.h
//  tripi wallet
//
//  Created by Heaving Line on 07.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *historyEventLogAddressCellIdentifier = @"historyEventLogAddressCellIdentifier";

@interface HistoryEventLogAddressCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueTextLabel;

- (void)sizeToFitLabels;

@end
