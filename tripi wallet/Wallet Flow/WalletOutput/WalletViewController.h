//
//  MainViewController.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 18.11.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WalletTableSource.h"
#import "WalletOutput.h"

@class ViewWithAnimatedLine;

@interface WalletViewController : BaseViewController <ControllerDelegate, WalletOutput>

@property (strong, nonatomic) WalletTableSource *tableSource;
@property (weak, nonatomic) id <WalletOutputDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *availabelLabel;
@property (weak, nonatomic) IBOutlet UILabel *uncorfirmedLabel;
@property (weak, nonatomic) IBOutlet UILabel *unconfirmedTextLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableTextTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableValueTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIView *viewForHeaderInSecondSection;

- (void)configTableView;

- (void)configHeaderBacground;

- (void)configLocalization;

@end
