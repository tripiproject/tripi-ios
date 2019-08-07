//
//  AboutOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 28.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"
#import "AboutOutputDelegate.h"

@protocol AboutOutput <Presentable>

@property (weak, nonatomic) id <AboutOutputDelegate> delegate;

@end
