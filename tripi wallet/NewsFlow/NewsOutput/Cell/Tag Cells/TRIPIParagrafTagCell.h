//
//  TRIPIParagrafTagCell.h
//  tripi wallet
//
//  Created by Heaving Line on 23.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicHeightCellProtocol.h"

extern NSString *const TRIPIParagrafTagCellReuseIdentifire;

@interface TRIPIParagrafTagCell : UITableViewCell <DynamicHeightCellProtocol>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeight;

- (UIFont *)boldFont;

- (UIFont *)regularFont;

- (UIColor *)linkColor;

- (UIColor *)textColor;

@end
