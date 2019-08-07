//
//  ChoiseSmartContractCell.h
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *choiseSmartContractCellIdentifire = @"ChoiseSmartContractCellIdentifire";

@interface ChoiseSmartContractCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *smartContractType;
@property (weak, nonatomic) IBOutlet UIImageView *disclosure;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end
