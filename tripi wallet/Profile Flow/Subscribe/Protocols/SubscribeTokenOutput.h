//
//  SubscribeTokenOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscribeTokenOutputDelegate.h"
#import "SubscribeTokenDataDisplayManagerProtocol.h"
#import "Presentable.h"

@protocol SubscribeTokenOutput <Presentable, SubscribeTokenDataDisplayManagerDelegate>

@property (weak, nonatomic) id <SubscribeTokenOutputDelegate> delegate;
@property (strong, nonatomic) id <SubscribeTokenDataDisplayManagerProtocol> delegateDataSource;
@property (copy, nonatomic) NSArray <Contract *> *tokensArray;

@end
