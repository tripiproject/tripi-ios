//
//  TokenCellSubscribe.h
//  tripi wallet
//
//  Created by Heaving Line on 03.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *tokenCellIdentifire = @"TokenCellSubscribeIdentifire";

@interface TokenCellSubscribe : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *topSeparator;
@property (weak, nonatomic) IBOutlet UIImageView *indicator;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
