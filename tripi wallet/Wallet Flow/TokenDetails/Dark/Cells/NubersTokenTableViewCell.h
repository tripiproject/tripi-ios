//
//  NubersTokenTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NubersTokenTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *initialSupplyLabel;
@property (weak, nonatomic) IBOutlet UILabel *decimalUnitsLabel;

@end
