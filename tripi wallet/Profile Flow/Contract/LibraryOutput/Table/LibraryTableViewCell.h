//
//  LibraryTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *libraryCellIdentifire = @"libraryCellIdentifire";

@interface LibraryTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *checkImageView;

@end
