//
//  ProfileTableViewCell.h
//  tripi wallet
//
//  Created by Heaving Line on 28.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const normalCellReuseIdentifire;
extern NSString *const separatorCellReuseIdentifire;
extern NSString *const switchCellReuseIdentifire;

@interface ProfileTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *diclousereImageView;
@property (weak, nonatomic) IBOutlet UILabel *profileCellTextLabel;
@property (weak, nonatomic) IBOutlet UIImageView *profileCellImage;
@property (weak, nonatomic) IBOutlet UISwitch *switchControl;

@end
