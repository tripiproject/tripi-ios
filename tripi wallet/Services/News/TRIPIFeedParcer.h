//
//  TRIPIFeedParcer.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPIFeedItem.h"
#import "Cancelable.h"

typedef void(^TRIPIFeeds)(NSArray <TRIPIFeedItem *> *feeds);

typedef void(^gettingFeedFailedBlock)(void);


@interface TRIPIFeedParcer : NSObject <Cancelable>

- (void)parceFeedFromUrl:(NSString *) url withCompletion:(TRIPIFeeds) completion andFailure:(gettingFeedFailedBlock) failure;

@end
