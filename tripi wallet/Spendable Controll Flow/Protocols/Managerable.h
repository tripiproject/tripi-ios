//
//  Managerable.h
//  tripi wallet
//
//  Created by Heaving Line on 19.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Spendable.h"

@protocol Spendable;

@protocol Managerable

- (void)spendableDidChange:(id <Spendable>) object;

- (void)historyOfSpendableDidChange:(id <Spendable>) object;

- (void)updateSpendableObject:(id <Spendable>) object;

- (void)updateSpendablesBalansesWithObject:(id) updateObject;

- (void)updateSpendablesHistoriesWithObject:(id) updateObject;

- (void)updateBalanceOfSpendableObject:(id <Spendable>) object withHandler:(void (^)(BOOL success)) complete;

- (void)updateHistoryOfSpendableObject:(id <Spendable>) object withHandler:(void (^)(BOOL success)) complete andPage:(NSInteger) page;

- (void)loadSpendableObjects;

- (void)saveSpendableObjects;

- (void)startObservingForSpendable:(id <Spendable>) spendable;

- (void)stopObservingForSpendable:(id <Spendable>) spendable;

- (void)startObservingForAllSpendable;

- (void)stopObservingForAllSpendable;

@end
