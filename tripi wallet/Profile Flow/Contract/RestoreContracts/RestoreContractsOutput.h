//
//  RestoreContractsOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 31.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestoreContractsOutputDelegate.h"
#import "Presentable.h"

@protocol RestoreContractsOutput <Presentable>

@property (weak, nonatomic) id <RestoreContractsOutputDelegate> delegate;

@end
