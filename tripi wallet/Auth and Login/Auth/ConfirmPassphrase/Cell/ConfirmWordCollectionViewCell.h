//
//  ConfirmWordCollectionViewCell.h
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString* confirmWordCollectionViewCellIdentifire;

@interface ConfirmWordCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIView *backView;

@end
