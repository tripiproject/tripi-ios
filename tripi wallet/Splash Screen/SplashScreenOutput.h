//
//  SplashScreenOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 04.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"
#import "SplashScreenOutputDelegate.h"

@protocol SplashScreenOutput <Presentable>

@property (weak, nonatomic) id <SplashScreenOutputDelegate> delegate;

@end
