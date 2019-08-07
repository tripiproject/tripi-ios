//
//  TRIPIFeedParcer.m
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "MWFeedParser.h"
#import "NSString+AbiRegex.h"

@interface TRIPIFeedParcer () <MWFeedParserDelegate>

@property (nonatomic, copy) TRIPIFeeds completion;
@property (nonatomic, copy) gettingFeedFailedBlock failure;
@property (nonatomic, strong) MWFeedParser *feedParcer;
@property (nonatomic, strong) NSMutableArray *feedItems;
@property (nonatomic, strong) NSOperationQueue *workingQueue;


@end

@implementation TRIPIFeedParcer

#pragma mark - Custom Accessors

- (NSMutableArray *)feedItems {

	if (!_feedItems) {
		_feedItems = @[].mutableCopy;
	}
	return _feedItems;
}

- (NSOperationQueue *)workingQueue {

	if (!_workingQueue) {
		_workingQueue = [[NSOperationQueue alloc] init];
		_workingQueue.maxConcurrentOperationCount = 1;
	}
	return _workingQueue;
}

#pragma mark - Public

- (void)parceFeedFromUrl:(NSString *) url withCompletion:(TRIPIFeeds) completion andFailure:(gettingFeedFailedBlock) failure {

	__weak __typeof (self) weakSelf = self;

	dispatch_block_t block = ^{

		NSURL *feedURL = [NSURL URLWithString:url];
		MWFeedParser *feedParser = [[MWFeedParser alloc] initWithFeedURL:feedURL];
		feedParser.delegate = weakSelf;
		feedParser.feedParseType = ParseTypeFull;
		feedParser.connectionType = ConnectionTypeSynchronously;
		[feedParser parse];
		weakSelf.feedParcer = feedParser;
	};

	self.completion = completion;
	self.failure = failure;
	[self.workingQueue addOperationWithBlock:block];
}

#pragma mark - Private

#pragma mark - MWFeedParserDelegate

- (void)feedParserDidStart:(MWFeedParser *) parser {

}

- (void)feedParser:(MWFeedParser *) parser didParseFeedInfo:(MWFeedInfo *) info {

}

- (void)feedParser:(MWFeedParser *) parser didParseFeedItem:(MWFeedItem *) item {

	__weak __typeof (self) weakSelf = self;

	dispatch_block_t block = ^{

		[weakSelf.feedItems addObject:item];
	};

	[self.workingQueue addOperationWithBlock:block];
}

- (void)feedParserDidFinish:(MWFeedParser *) parser {

	__weak __typeof (self) weakSelf = self;

	dispatch_block_t block = ^{

		NSMutableArray<TRIPIFeedItem *> *tripiFeeds = @[].mutableCopy;

		for (MWFeedItem *item in weakSelf.feedItems) {
			TRIPIFeedItem *tripiFeed = [[TRIPIFeedItem alloc] initWithItem:item];
			[tripiFeeds addObject:tripiFeed];
		}

		if (weakSelf.completion) {

			dispatch_async (dispatch_get_main_queue (), ^{
				weakSelf.completion (tripiFeeds);
			});
		}
	};

	[self.workingQueue addOperationWithBlock:block];
}

- (void)feedParser:(MWFeedParser *) parser didFailWithError:(NSError *) error {

	if (self.failure) {
		self.failure ();
	}
}

#pragma mark - Cancelable

- (void)cancel {
	[self.workingQueue cancelAllOperations];
}

@end
