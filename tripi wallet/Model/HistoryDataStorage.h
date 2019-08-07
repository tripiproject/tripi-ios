//
//  HistoryDataStorage.h
//  tripi wallet
//
//  Created by Heaving Line on 30.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HistoryElement.h"
#import "HistoryStorageProtocol.h"

@protocol Spendable;
@protocol HistoryElementProtocol;

extern NSString *const HistoryUpdateEvent;

@interface HistoryDataStorage : NSObject <HistoryStorageProtocol>


@end
