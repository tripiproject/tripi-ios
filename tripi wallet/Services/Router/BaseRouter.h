//
//  BaseRouter.h
//  tripi wallet
//
//  Created by Heaving Line on 28.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseRouterProtocol.h"

@interface BaseRouter : NSObject <BaseRouterProtocol>

- (instancetype)initWithNavigationController:(UINavigationController*) navigationController;

@end
