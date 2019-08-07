//
//  WatchHistoryElement.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 14.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WatchHistoryElement.h"

@implementation WatchHistoryElement

- (instancetype)initWithDictionary:(NSDictionary *) dictionary {
	self = [super init];
	if (self) {
		[self setupFromDictionary:dictionary];
	}
	return self;
}

- (void)setupFromDictionary:(NSDictionary *) dictionary {
	self.address = dictionary[@"address"];
	self.date = dictionary[@"date"];
	self.amount = dictionary[@"amount"];
	self.send = [dictionary[@"send"] boolValue];
}

@end
