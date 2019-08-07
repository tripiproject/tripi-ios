//
//  PageControl.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 06.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PageControlItem;

@interface PageControl : UIView

@property (nonatomic) NSInteger pagesCount;
@property (nonatomic) NSInteger selectedPage;

- (UIView <PageControlItem> *)createViewItem;

- (CGFloat)spaceBetweenItems;

@end
