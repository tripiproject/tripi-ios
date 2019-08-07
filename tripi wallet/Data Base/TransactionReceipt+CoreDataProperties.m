//
//  TransactionReceipt+CoreDataProperties.m
//  tripi wallet
//
//  Created by Heaving Line on 06.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//
//

#import "TransactionReceipt+CoreDataProperties.h"

@implementation TransactionReceipt (CoreDataProperties)

+ (NSFetchRequest<TransactionReceipt *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"TransactionReceipt"];
}

@dynamic blockHash;
@dynamic blockNumber;
@dynamic contractAddress;
@dynamic cumulativeGasUsed;
@dynamic from;
@dynamic gasUsed;
@dynamic to;
@dynamic transactionHash;
@dynamic transactionIndex;
@dynamic logs;

@end
