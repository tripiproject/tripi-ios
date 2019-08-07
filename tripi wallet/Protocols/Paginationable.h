//
//  Paginationable.h
//  tripi wallet
//
//  Created by Heaving Line on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomPageControl;

@protocol Paginationable <NSObject>

- (void)setCurrentPage:(NSInteger) page;

- (void)setNumberPages:(NSInteger) number;


@end
