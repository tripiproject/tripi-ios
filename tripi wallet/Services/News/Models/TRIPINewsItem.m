//
//  TRIPINewsItem.m
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//


@interface TRIPINewsItem ()

@property (nonatomic, strong) TRIPIFeedItem *feed;
@property (nonatomic, strong) NSString *identifire;

@end

@implementation TRIPINewsItem

- (instancetype)initWithTags:(NSArray<TRIPIHTMLTagItem *> *) tags andFeed:(TRIPIFeedItem *) feed {

	self = [super init];
	if (self) {
		_tags = tags;
		_feed = feed;
		_identifire = feed.identifier;
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *) decoder {

	self = [super init];

	if (self) {

		self.tags = [decoder decodeObjectForKey:@"tags"];
		self.feed = [decoder decodeObjectForKey:@"feed"];
		self.identifire = [decoder decodeObjectForKey:@"identifire"];
	}

	return self;
}

- (void)encodeWithCoder:(NSCoder *) encoder {

	[encoder encodeObject:self.tags forKey:@"tags"];
	[encoder encodeObject:self.feed forKey:@"feed"];
	[encoder encodeObject:self.identifire forKey:@"identifire"];
}

#pragma mark - Equality

- (BOOL)isEqualToNewsItem:(TRIPINewsItem *) aNewsItem {

	if (!aNewsItem) {
		return NO;
	}

	BOOL haveEqualTags = (!self.tags && !aNewsItem.tags) || [self.tags isEqualToArray:aNewsItem.tags];
	BOOL haveEqualFeed = (!self.feed && !aNewsItem.feed) || [self.feed isEqual:aNewsItem.feed];
	BOOL haveEqualIdentifires = (!self.identifire && !aNewsItem.identifire) || [self.identifire isEqualToString:aNewsItem.identifire];

	return haveEqualTags && haveEqualFeed && haveEqualIdentifires;
}

- (BOOL)isEqual:(id) anObject {

	if (self == anObject) {
		return YES;
	}

	if (![anObject isKindOfClass:[TRIPINewsItem class]]) {
		return NO;
	}

	return [self isEqualToNewsItem:(TRIPINewsItem *)anObject];
}

- (NSUInteger)hash {

	return [self.tags hash] ^ [self.feed hash] ^ [self.identifire hash];
}

@end
