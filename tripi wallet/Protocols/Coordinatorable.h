//
//  Coordinatorable.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Coordinatorable <NSObject>

@required
- (void)start;

@optional
- (instancetype)initWithViewController:(UIViewController *) viewController;

- (instancetype)initWithPageViewController:(UIPageViewController *) pageViewController;

- (instancetype)initWithParentViewContainer:(UIViewController *) containerViewController;

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;


@end
