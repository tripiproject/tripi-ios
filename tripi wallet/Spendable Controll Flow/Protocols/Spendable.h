//
//  Spendable.h
//  tripi wallet
//
//  Created by Heaving Line on 19.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Managerable.h"
#import "HistoryElementProtocol.h"
#import "HistoryDataStorage.h"

@class TRIPIBigNumber;

@protocol Managerable;

@protocol Spendable <NSObject>

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) TRIPIBigNumber *balance;
@property (strong, nonatomic) TRIPIBigNumber *unconfirmedBalance;
@property (strong, nonatomic) id <HistoryStorageProtocol> historyStorage;
@property (copy, nonatomic) NSString *mainAddress;
@property (copy, nonatomic) NSString *symbol;
@property (weak, nonatomic) id <Managerable> manager;
@property (copy, nonatomic) NSArray <id <HistoryElementProtocol>> *historyArray;

- (void)updateBalanceWithHandler:(void (^)(BOOL success)) complete;

- (void)updateWithHandler:(void (^)(BOOL success)) complete;

- (void)updateHistoryWithHandler:(void (^)(BOOL success)) complete andPage:(NSInteger) page;

- (void)historyDidChange;

@end
