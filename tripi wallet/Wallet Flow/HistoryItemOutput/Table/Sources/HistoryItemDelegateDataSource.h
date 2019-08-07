//
//  HistoryItemDelegateDataSource.h
//  tripi wallet
//
//  Created by Heaving Line on 06.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HistoryElement;

@interface HistoryItemDelegateDataSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) id<HistoryElementProtocol> item;

@end
