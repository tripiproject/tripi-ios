//
//  FavouriteTemplateCollectionViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *favouriteTemplateCellIdentifire = @"FavouriteTemplateCollectionViewCell";

@interface FavouriteTemplateCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

+ (UIFont *)getLabelFont;

@end
