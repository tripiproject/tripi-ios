//
//  QStoreListTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 28.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QStoreListTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageIcon;
@property (weak, nonatomic) IBOutlet UILabel *amount;

- (void)changeHighlight:(BOOL) value;

@end
