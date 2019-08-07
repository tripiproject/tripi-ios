//
//  TRIPITitleTagCell.h
//  tripi wallet
//
//  Created by Heaving Line on 09.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const TRIPITitleTagCellLightReuseIdentifire;

@interface TRIPITitleTagCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
