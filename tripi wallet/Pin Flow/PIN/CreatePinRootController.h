//
//  CreatePinRootController.h
//  tripi wallet
//
//  Created by Heaving Line on 14.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PinViewController.h"

@protocol PinCoordinator;

@interface CreatePinRootController : UINavigationController <PinCoordinator>

@property (nonatomic, copy) void (^createPinCompletesion)(void);
@property (assign, nonatomic) BOOL animating;


@end
