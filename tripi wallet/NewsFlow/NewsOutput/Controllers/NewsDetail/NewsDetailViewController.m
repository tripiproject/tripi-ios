//
//  NewsDetailViewController.m
//  tripi wallet
//
//  Created by Heaving Line on 20.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsDetailViewController.h"
#import "NewsDetailCellBuilder.h"
#import "LoaderPopUpViewController.h"

@interface NewsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) LoaderPopUpViewController *loader;
@property (weak, nonatomic) IBOutlet UIView *loaderPlaceholderView;
@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;

@end

@implementation NewsDetailViewController

@synthesize delegate, newsItem, cellBuilder;

#pragma mark - Lifecycle

- (void)viewDidLoad {

	[super viewDidLoad];
	[self configTableView];
    [self configLocalization];

	if (!self.newsItem.tags) {
		[self getData];
		self.tableView.hidden = YES;
	} else {
		self.tableView.hidden = NO;
	}
}

- (void)viewDidAppear:(BOOL) animated {
	[super viewDidAppear:animated];
	[self.loader reloadLoaderAnimation];
	[self reloadTableView];
}

- (void)viewWillAppear:(BOOL) animated {
	[super viewWillAppear:animated];
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];

	if (!CGRectEqualToRect (self.loader.view.frame, self.loaderPlaceholderView.bounds)) {
		self.loader.view.frame = self.loaderPlaceholderView.bounds;
	}
}

#pragma mark - Configuration

-(void)configLocalization {
    self.titleTextLabel.text = NSLocalizedString(@"News Details", @"News Details Controllers Title");
}

- (void)configTableView {

	self.tableView.rowHeight = UITableViewAutomaticDimension;
	self.tableView.estimatedRowHeight = 250.0f;
}


- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger) section {

	if (!self.newsItem.tags.count) {
		return 0;
	}
	return self.newsItem.tags.count + 1;
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {

	if (indexPath.row == 0 && indexPath.section == 0) {

		TRIPIFeedItem *feed = self.newsItem.feed;
		return [self.cellBuilder getCellTitleWithFeedItem:feed fromTable:tableView withIndexPath:indexPath];
	} else {

		TRIPIHTMLTagItem *tag = self.newsItem.tags[indexPath.row - 1];
		return [self.cellBuilder getCellWithTagItem:tag fromTable:tableView withIndexPath:indexPath];
	}
}

- (void)getData {

	[self.delegate refreshTagsWithNewsItem:self.newsItem];
}

#pragma mark - Actions

- (IBAction)doBackAction:(id) sender {
	if ([self.delegate respondsToSelector:@selector (didBackPressed)]) {
		[self.delegate didBackPressed];
	}
}

- (void)startLoading {
	LoaderPopUpViewController *loader = [SLocator.popupService showLoaderPopUpInView:self.loaderPlaceholderView];
	self.loader = loader;
}

- (void)stopLoadingIfNeeded {
	[SLocator.popupService dismissLoader:self.loader completion:nil];
	self.loader = nil;
}


#pragma mark - NewsDetailOutputDelegate

- (void)reloadTableView {

	__weak typeof (self) weakSelf = self;
	dispatch_async (dispatch_get_main_queue (), ^{
		weakSelf.tableView.hidden = NO;
		[weakSelf.tableView reloadData];
	});
}

- (void)failedToGetData {

}

@end
