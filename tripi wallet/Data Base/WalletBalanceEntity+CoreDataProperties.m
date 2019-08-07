//
//  WalletBalanceEntity+CoreDataProperties.m
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//
//

#import "WalletBalanceEntity+CoreDataProperties.h"

@implementation WalletBalanceEntity (CoreDataProperties)

+ (NSFetchRequest<WalletBalanceEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"WalletBalanceEntity"];
}

@dynamic balanceString;
@dynamic dateInterval;
@dynamic unconfirmedBalanceString;

@end
