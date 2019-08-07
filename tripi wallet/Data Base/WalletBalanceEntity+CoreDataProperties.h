//
//  WalletBalanceEntity+CoreDataProperties.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//
//

#import "WalletBalanceEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface WalletBalanceEntity (CoreDataProperties)

+ (NSFetchRequest<WalletBalanceEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *balanceString;
@property (nonatomic) int64_t dateInterval;
@property (nullable, nonatomic, copy) NSString *unconfirmedBalanceString;

@end

NS_ASSUME_NONNULL_END
