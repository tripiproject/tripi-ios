//
//  FirstAuthOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstAuthOutputDelegate.h"
#import "Presentable.h"

@protocol FirstAuthOutput <Presentable>

@property (weak, nonatomic) id <FirstAuthOutputDelegate> delegate;

@end
