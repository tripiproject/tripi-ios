//
//  Wallet.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 15.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Spendable.h"

@class HistoryDataStorage;
@class Wallet;
@class BTCKey;

extern NSInteger const brandKeyWordsCount;

@interface Wallet : NSObject <Spendable>

- (instancetype)initWithName:(NSString *) name pin:(NSString *) pin;

- (instancetype)initWithName:(NSString *) name pin:(NSString *) pin seedWords:(NSArray *) seedWords;

@property (copy, nonatomic, readonly) NSArray *seedWords; //deprecated
@property (nonatomic, readonly) NSInteger countOfUsedKeys;

- (BOOL)configAddressesWithPin:(NSString *) pin;

- (BOOL)changeBrandKeyPinWithOldPin:(NSString *) pin toNewPin:(NSString *) newPin;



- (NSString *)lastRandomKeyOrRandomKey;

- (NSString *)randomKey;

- (BTCKey *)keyAtIndex:(NSUInteger) index;

- (NSArray <BTCKey *> *)allKeys;

- (NSArray <NSString *> *)allKeysAdreeses;

- (NSArray <NSString *> *)addressesInRightOrder;

- (NSDictionary <NSString *, BTCKey *> *)addressKeyHashTable;

- (NSString *)brandKeyWithPin:(NSString *) pin;

- (NSString *)getStoredLastAddressKey;

- (void)clearPublicAddresses;

+ (NSArray *)generateWordsArray;

- (void)clearKeychain;

@end
