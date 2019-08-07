//
//  Log+CoreDataProperties.m
//  tripi wallet
//
//  Created by Heaving Line on 06.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//
//

#import "Log+CoreDataProperties.h"

@implementation Log (CoreDataProperties)

+ (NSFetchRequest<Log *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Log"];
}

@dynamic address;
@dynamic data;
@dynamic topics;

@end
