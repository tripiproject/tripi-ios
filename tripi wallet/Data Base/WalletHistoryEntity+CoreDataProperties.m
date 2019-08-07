//
//  WalletHistoryEntity+CoreDataProperties.m
//  tripi wallet
//
//  Created by Heaving Line on 06.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//
//

#import "WalletHistoryEntity+CoreDataProperties.h"

@implementation WalletHistoryEntity (CoreDataProperties)

+ (NSFetchRequest<WalletHistoryEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"WalletHistoryEntity"];
}

@dynamic address;
@dynamic amountString;
@dynamic confirmed;
@dynamic contracted;
@dynamic currency;
@dynamic dateInerval;
@dynamic fromAddresses;
@dynamic hasReceipt;
@dynamic internal;
@dynamic send;
@dynamic toAddresses;
@dynamic transactionHash;

@end
