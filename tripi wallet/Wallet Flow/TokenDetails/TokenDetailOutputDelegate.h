//
//  TokenDetailOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 24.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Spendable.h"

@protocol TokenDetailOutputDelegate <NSObject>

- (void)showAddressInfoWithSpendable:(id <Spendable>) spendable;

- (void)didBackPressed;

- (void)didShareTokenButtonPressed;

- (void)didShowTokenAddressControlWith:(Contract *) contract;

- (void)didSelectTokenHistoryItem:(id <HistoryElementProtocol>) item;

- (void)reloadContractHistoryOfToken:(Contract *) token;

- (void)refreshContractHistoryOfToken:(Contract *) token withPage:(NSInteger) page;

- (void)didPullToUpdateToken:(Contract *) token;

- (void)didUnsubscribeFromDeletedContract:(Contract *) token;


@end
