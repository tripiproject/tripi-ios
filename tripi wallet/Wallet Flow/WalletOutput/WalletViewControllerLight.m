//
//  WalletViewControllerLight.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletViewControllerLight.h"

@interface WalletViewControllerLight ()

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIView *statusBarView;

@end

@implementation WalletViewControllerLight

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

- (void)configTableView {

	[super configTableView];

	self.tableView.scrollIndicatorInsets = UIEdgeInsetsMake (64, 0, 0, 0);

	UINib *sectionHeaderNib = [UINib nibWithNibName:@"HistoryTableHeaderViewLight" bundle:nil];
	[self.tableView registerNib:sectionHeaderNib forHeaderFooterViewReuseIdentifier:SectionHeaderViewIdentifier];
}

- (void)configHeaderBacground {

	CGRect frame = self.view.bounds;
	frame.origin.y = -frame.size.height;
	UIView *refreshBackgroundView = [[UIView alloc] initWithFrame:frame];
	refreshBackgroundView.backgroundColor = lightDarkBlueColor ();
	//[self.tableView insertSubview:refreshBackgroundView atIndex:0];
}

- (void)reloadHeader:(id <Spendable>) wallet {

	[super reloadHeader:wallet];

	self.availableTextTopConstraint.constant = ![wallet.unconfirmedBalance isEqualToInt:0] ? 28.0f : 36.0f;
}

- (void)needShowHeader:(CGFloat) percent {

	CGFloat full = 0.5f;
	if (percent > 0.5f) {
		CGFloat notFull = (percent - 0.5f) / full;
		self.headerView.alpha = 0;
		self.titleView.alpha = notFull;
	} else {
		CGFloat notFull = percent / full;
		self.headerView.alpha = 1 - notFull;
		self.titleView.alpha = 0;
	}
}

- (void)needHideHeaderForSecondSeciton {

	[super needHideHeaderForSecondSeciton];

    self.statusBarView.backgroundColor = [UIColor clearColor];
	self.headerView.backgroundColor = [UIColor clearColor];
}

- (void)needShowHeaderForSecondSeciton {

	[super needShowHeaderForSecondSeciton];

    self.statusBarView.backgroundColor = lightDarkBlueColor ();
	self.headerView.backgroundColor = lightDarkBlueColor ();
}

@end
