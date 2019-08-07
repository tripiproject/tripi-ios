//
//  ContractHestoryTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 18.11.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryElement.h"

@interface ContractHistoryTableViewCell : UITableViewCell

@property (weak, nonatomic) id<HistoryElementProtocol> historyElement;

- (void)changeHighlight:(BOOL) value;

@property (weak, nonatomic) IBOutlet UIImageView *typeImage;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *symbolLabel;

@end
