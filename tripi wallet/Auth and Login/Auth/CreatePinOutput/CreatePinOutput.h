//
//  CreatePinOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreatePinOutputDelegate.h"

@protocol CreatePinOutput <NSObject>

@property (weak, nonatomic) id <CreatePinOutputDelegate> delegate;

@end
