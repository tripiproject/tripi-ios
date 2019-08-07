//
//  HistoryItemOverviewSource.h
//  tripi wallet
//
//  Created by Heaving Line on 06.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TransactionReceipt;

@protocol HistoryItemOverviewSourceDelegate <NSObject>

- (void)didPressedCopyWithValue:(NSString*) value;

@end

@interface HistoryItemOverviewSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) TransactionReceipt *reciept;
@property (strong, nonatomic) id<HistoryElementProtocol> item;
@property (weak, nonatomic) id <HistoryItemOverviewSourceDelegate> delegate;

@end
