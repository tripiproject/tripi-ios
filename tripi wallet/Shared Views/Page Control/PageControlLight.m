//
//  PageControlLight.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 06.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PageControlLight.h"
#import "PageControlItemLight.h"

@implementation PageControlLight

- (UIView <PageControlItem> *)createViewItem {
	return [PageControlItemLight new];
}

- (CGFloat)spaceBetweenItems {
	return 5.0f;
}

@end
