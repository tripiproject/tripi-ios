//
//  SubscribeTokenDataDisplayManagerProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SubscribeTokenDataDisplayManagerDelegate.h"

@protocol SubscribeTokenDataDisplayManagerProtocol <UITableViewDelegate, UITableViewDataSource>

@property (copy, nonatomic) NSArray <Contract *> *tokensArray;
@property (weak, nonatomic) id <SubscribeTokenDataDisplayManagerDelegate> delegate;

@end
