//
//  TransactionLinearLoaderDark.m
//  tripi wallet
//
//  Created by Heaving Line on 31.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TransactionLinearLoaderDark.h"

@implementation TransactionLinearLoaderDark

-(UIColor*)backColor {
    return customBlackColor();
}

-(UIColor*)loaderColor {
    return [customBlueColor() colorWithAlphaComponent:0.5];
}

@end
