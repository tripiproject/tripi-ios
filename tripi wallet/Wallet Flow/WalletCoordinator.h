//
//  WalletCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 02.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HistoryElement;
@class AbiinterfaceItem;
@class ResultTokenInputsModel;
@protocol Spendable;

@protocol WalletCoordinatorDelegate <NSObject>

@required

// Table reload
- (void)refreshTableViewDataWithPage:(NSInteger) page;
- (void)refreshTableViewDataFromStart;


// Show
- (void)showAddressInfoWithSpendable:(id <Spendable>) spendable;

// Some actions
- (void)didBackPressed;

- (void)didSelectHistoryItemIndexPath:(NSIndexPath *) indexPath withItem:(id <HistoryElementProtocol>) item;

- (void)didShareTokenButtonPressed;

@end

@protocol TabBarCoordinatorDelegate;

@interface WalletCoordinator : BaseCoordinator <WalletCoordinatorDelegate, Coordinatorable>

@property (weak, nonatomic) id <TabBarCoordinatorDelegate> delegate;

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;

@end
