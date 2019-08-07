//
//  LanguageTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 23.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LanguageTableViewCell : UITableViewCell

- (void)setData:(NSString *) titleText selected:(BOOL) selected;

- (void)changeCellStyle:(BOOL) selected;

- (UIColor *)getSelectedColor;

- (UIColor *)getDeselectedColor;

@end
