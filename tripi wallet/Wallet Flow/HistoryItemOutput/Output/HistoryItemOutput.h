//
//  HistoryItemOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "HistoryItemOutputDelegate.h"

@class HistoryElement;
@class TransactionReceipt;

@protocol HistoryItemOutput <NSObject>

@property (strong, nonatomic) id <HistoryElementProtocol> item;
@property (strong, nonatomic) TransactionReceipt* receipt;
@property (strong, nonatomic) NSArray<RecieptLogDTO*>* logs;
@property (weak, nonatomic) id <HistoryItemOutputDelegate> delegate;

@end
