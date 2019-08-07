//
//  WalletViewControllerDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletViewControllerDark.h"
#import "ViewWithAnimatedLine.h"

CGFloat const WalletHeaderHeightShowedDark = 50.0f;

@interface WalletViewControllerDark ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *trailingForLineConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerHeightConstraint;

@end

@implementation WalletViewControllerDark

- (void)viewDidLoad {
	[super viewDidLoad];

	[(ViewWithAnimatedLine *)self.headerView setRightConstraint:self.trailingForLineConstraint];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

- (void)configTableView {

	[super configTableView];

	UINib *sectionHeaderNib = [UINib nibWithNibName:@"HistoryTableHeaderViewDark" bundle:nil];
	[self.tableView registerNib:sectionHeaderNib forHeaderFooterViewReuseIdentifier:SectionHeaderViewIdentifier];
}

- (void)configHeaderBacground {

	CGRect frame = self.view.bounds;
	frame.origin.y = -frame.size.height;
	UIView *refreshBackgroundView = [[UIView alloc] initWithFrame:frame];
	refreshBackgroundView.backgroundColor = customRedColor ();
	[self.tableView insertSubview:refreshBackgroundView atIndex:0];
}

#pragma mark - TableSourceDelegate

- (void)needShowHeader:(CGFloat) percent {
	if (self.headerHeightConstraint.constant == WalletHeaderHeightShowedDark) {
		return;
	}

	self.headerHeightConstraint.constant = WalletHeaderHeightShowedDark;
	[(ViewWithAnimatedLine *)self.headerView showAnimation];
}

- (void)needHideHeader:(CGFloat) percent {
	if (self.headerHeightConstraint.constant == 0.0f) {
		return;
	}

	self.headerHeightConstraint.constant = 0;
}

@end
