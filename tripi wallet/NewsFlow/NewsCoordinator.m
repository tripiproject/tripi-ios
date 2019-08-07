//
//  NewsCoordinator.m
//  tripi wallet
//
//  Created by Heaving Line on 02.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsCoordinator.h"
#import "NewsOutput.h"
#import "NewsDetailOutput.h"
#import "NewsDetailCellBuilder.h"

@interface NewsCoordinator () <NewsOutputDelegate, NewsDetailOutputDelegate>

@property (strong, nonatomic) UINavigationController *navigationController;
@property (weak, nonatomic) NSObject <NewsOutput> *newsController;
@property (weak, nonatomic) NSObject <NewsDetailOutput> *newsDetailController;


@end

@implementation NewsCoordinator

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController {

	self = [super init];
	if (self) {
		_navigationController = navigationController;
	}
	return self;
}

#pragma mark - Coordinatorable

- (void)start {

	NSObject <NewsOutput> *newsOutput = [SLocator.controllersFactory createNewsOutput];
	newsOutput.delegate = self;
	self.newsController = newsOutput;
	__weak __typeof (self) weakSelf = self;

	NSArray <TRIPINewsItem *> *news = [SLocator.newsFacedeService obtainNewsItems];
	if (news) {
		newsOutput.news = news;
		[newsOutput reloadTableView];
	}

	[SLocator.newsFacedeService getNewsItemsWithCompletion:^(NSArray<TRIPINewsItem *> *news) {
		weakSelf.newsController.news = news;
		[weakSelf.newsController reloadTableView];
	}                                          andFailure:nil];

	[self.navigationController setViewControllers:@[[newsOutput toPresent]]];
}

#pragma mark - NewsOutputDelegate

- (void)refreshTableViewData {

	__weak __typeof (self) weakSelf = self;

	[self.newsController startLoading];
	[SLocator.newsFacedeService getNewsItemsWithCompletion:^(NSArray<TRIPINewsItem *> *news) {
		weakSelf.newsController.news = news;
		[weakSelf.newsController reloadTableView];
		[weakSelf.newsController stopLoadingIfNeeded];
	}                                          andFailure:^{
		[weakSelf.newsController stopLoadingIfNeeded];
	}];
}

- (void)didSelectCellWithNews:(TRIPINewsItem *) newsItem {

	[self showNewsWithNewsItem:newsItem];
}

#pragma mark NewsDetailOutputDelegate

- (void)didBackPressed {
	[SLocator.newsFacedeService stop];
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)refreshTagsWithNewsItem:(TRIPINewsItem *) newsItem {

	__weak __typeof (self) weakSelf = self;

	if (!newsItem.tags) {
		[self.newsDetailController startLoading];
		[SLocator.newsFacedeService getTagsFromNews:newsItem withCompletion:^(NSArray<TRIPIHTMLTagItem *> *tags) {

			weakSelf.newsDetailController.newsItem = newsItem;
			[weakSelf.newsDetailController stopLoadingIfNeeded];
			[weakSelf.newsDetailController reloadTableView];
		}];
	}
}

#pragma mark - Private Methods

- (void)showNewsWithNewsItem:(TRIPINewsItem *) newsItem {

	NSObject <NewsDetailOutput> *newsOutput = [SLocator.controllersFactory createNewsDetailOutput];
	newsOutput.newsItem = newsItem;
	NewsDetailCellBuilder *cellBuilder = [NewsDetailCellBuilder new];
	newsOutput.cellBuilder = cellBuilder;
	newsOutput.delegate = self;
	self.newsDetailController = newsOutput;
	[self.navigationController pushViewController:[newsOutput toPresent] animated:YES];
}


@end
