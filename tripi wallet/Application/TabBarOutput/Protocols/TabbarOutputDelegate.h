//
//  TabbarOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TabbarOutputDelegate <NSObject>

@required
- (void)didSelecteSendTabWithController:(UIViewController *) controller;

- (void)didSelecteProfileTabWithController:(UIViewController *) controller;

- (void)didSelecteWalletTabWithController:(UIViewController *) controller;

@end
