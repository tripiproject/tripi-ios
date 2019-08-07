//
//  UIViewController+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 26.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

+ (UIViewController *)controllerInStoryboard:(NSString *) storyboard withIdentifire:(NSString *) identifire;

- (UIViewController *)controllerInStoryboard:(NSString *) storyboard;


@end
