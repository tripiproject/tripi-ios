//
//  TRIPIFeedItem.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWFeedItem.h"

@interface TRIPIFeedItem : NSObject <NSCoding>

@property (nonatomic, copy, readonly) NSString *identifier;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *link;
@property (nonatomic, copy, readonly) NSDate *date;
@property (nonatomic, copy, readonly) NSDate *updated;
@property (nonatomic, copy, readonly) NSString *summary;
@property (nonatomic, copy, readonly) NSString *content;
@property (nonatomic, copy, readonly) NSString *author;
@property (nonatomic, copy, readonly) NSArray *enclosures;
@property (nonatomic, copy) NSString *firstParagraph;

- (instancetype)initWithItem:(MWFeedItem *) feedItem;

@end
