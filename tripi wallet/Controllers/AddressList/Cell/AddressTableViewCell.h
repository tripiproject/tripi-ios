//
//  AddressTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 18.11.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddressTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *puplicKeyLabel;

@end
