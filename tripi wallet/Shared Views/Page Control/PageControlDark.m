//
//  PageControlDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 06.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PageControlDark.h"
#import "PageControlItemDark.h"

@implementation PageControlDark

- (UIView <PageControlItem> *)createViewItem {
	PageControlItemDark *item = [PageControlItemDark new];
	item.tintColor = self.tintColor;
	return item;
}

- (CGFloat)spaceBetweenItems {
	return 4.0f;
}

@end
