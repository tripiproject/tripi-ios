//
//  FinishInputCell.h
//  tripi wallet
//
//  Created by Heaving Line on 17.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *FinishInputCellIdentifire = @"FinishInputCellIdentifire";

@interface FinishInputCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *value;

@property (copy, nonatomic) NSString *shortValueString;

@end
