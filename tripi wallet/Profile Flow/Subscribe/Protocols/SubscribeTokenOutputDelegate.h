//
//  SubscribeTokenOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscribeTokenOutputDelegate <NSObject>

- (void)didBackButtonPressed;

- (void)didSelectContract:(Contract *) contract;

@end
