//
//  TokenTemplateCell.h
//  tripi wallet
//
//  Created by Heaving Line on 23.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *tokenTemplateCellIdentifire = @"TokenTemplateCellIdentifire";

@interface TokenTemplateCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *templateName;
@property (weak, nonatomic) IBOutlet UILabel *tokenIdentifire;
@property (weak, nonatomic) IBOutlet UIImageView *disclousureImage;
@property (weak, nonatomic) IBOutlet UILabel *creationDate;

@end
