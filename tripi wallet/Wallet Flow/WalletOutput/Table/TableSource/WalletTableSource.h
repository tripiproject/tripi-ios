//
//  WalletHistoryDelegateDataSource.h
//  tripi wallet
//
//  Created by Heaving Line on 06.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WalletCoordinator.h"
#import "WalletHeaderCell.h"
#import "HistoryHeaderVIew.h"
#import "WalletHistoryEntity+Extension.h"


@class HistoryElement;

@protocol ControllerDelegate <NSObject>

@optional
- (void)needShowHeader:(CGFloat) percent;

- (void)needHideHeader:(CGFloat) percent;

- (void)needShowHeaderForSecondSeciton;

- (void)needHideHeaderForSecondSeciton;

@end

@interface WalletTableSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (weak, nonatomic) id <Spendable> wallet;
@property (weak, nonatomic) id <WalletCoordinatorDelegate> delegate;
@property (weak, nonatomic) id <ControllerDelegate> controllerDelegate;

@property (nonatomic) BOOL haveTokens;
@property (nonatomic, weak) WalletHeaderCell *mainCell;

@property (nonatomic, weak, readonly) HistoryHeaderVIew *sectionHeaderView;
@property (nonatomic, readonly) CGFloat lastContentOffset;
@property (weak, nonatomic) UIView *emptyPlacehodlerView;


- (HeaderCellType)headerCellType;

- (void)didScrollForheaderCell:(UIScrollView *) scrollView;
- (BOOL)isLoadingIndex:(NSIndexPath*) indexpath;
- (void)setupFething;

- (void)reloadWithFeching;

- (void)failedConnection;
- (void)reconnect;


@end
