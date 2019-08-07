//
//  TRIPINewsItem.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPIFeedItem.h"
#import "TRIPIHTMLTagItem.h"

@interface TRIPINewsItem : NSObject <NSCoding>

@property (nonatomic, strong) NSArray<TRIPIHTMLTagItem *> *tags;
@property (nonatomic, strong, readonly) TRIPIFeedItem *feed;
@property (nonatomic, strong, readonly) NSString *identifire;

- (instancetype)initWithTags:(NSArray<TRIPIHTMLTagItem *> *) tags andFeed:(TRIPIFeedItem *) feed;

@end
