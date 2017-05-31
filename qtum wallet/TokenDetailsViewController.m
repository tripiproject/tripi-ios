//
//  TokenDetailsViewController.m
//  qtum wallet
//
//  Created by Sharaev Vladimir on 19.05.17.
//  Copyright © 2017 PixelPlex. All rights reserved.
//

#import "TokenDetailsViewController.h"
#import "WalletCoordinator.h"
#import "TokenDetailsTableSource.h"
#import "ViewWithAnimatedLine.h"

CGFloat const HeightForHeaderView = 50.0f;

@interface TokenDetailsViewController () <TokenDetailsTableSourceDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *availableBalanceLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConsctaintForHeaderView;
@property (weak, nonatomic) IBOutlet ViewWithAnimatedLine *headerVIew;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *trailingForLineConstraint;

@property (nonatomic, weak) TokenDetailsTableSource *source;

@end

@implementation TokenDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.source.delegate = self;
    self.source.token = self.token;
    self.tableView.dataSource = self.source;
    self.tableView.delegate = self.source;
    
    [self.headerVIew setRightConstraint:self.trailingForLineConstraint];
}

- (void)setTableSource:(TokenDetailsTableSource *)source{
    self.source = source;
}

#pragma mark - Actions

- (IBAction)actionShare:(id)sender {
    [self.delegate didPressedTokenFunctionWithItem:self.token];
}

- (IBAction)actionBack:(id)sender {
    [self.delegate didBackPressed];
}

#pragma mark - TokenDetailsTableSourceDelegate

- (void)didPressedInfoActionWithToken:(Token*) token {
    [self.delegate showAddressInfoWithSpendable:token];
}

- (void)needShowHeader{
    if (self.heightConsctaintForHeaderView.constant == 50.0f) {
        return;
    }
    
    self.heightConsctaintForHeaderView.constant = 50.0f;
    [self.headerVIew showAnimation];
}

- (void)needHideHeader{
    if (self.heightConsctaintForHeaderView.constant == 0.0f) {
        return;
    }
    
    self.heightConsctaintForHeaderView.constant = 0;
}

@end
