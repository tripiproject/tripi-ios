//
//  NewsDataProvider.h
//  tripi wallet
//
//  Created by Heaving Line on 13.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPINewsItem.h"
#import "TRIPIFeedParcer.h"
#import "TRIPIHtmlParcer.h"

@interface NewsFacedeService : NSObject

typedef void(^TRIPINewsItems)(NSArray <TRIPINewsItem *> *feeds);

typedef void(^gettingNewsFailedBlock)(void);


- (void)getNewsItemsWithCompletion:(TRIPINewsItems) completion andFailure:(gettingNewsFailedBlock) failure;

- (void)getTagsFromNews:(TRIPINewsItem *) newsItem withCompletion:(TRIPITagsItems) completion;

- (NSArray <TRIPINewsItem *> *)obtainNewsItems;

- (void)stop;

@end
