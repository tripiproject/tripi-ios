//
//  SmartContractMenuOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SmartContractMenuOutputDelegate <NSObject>

- (void)didSelectContractStore;

- (void)didSelectWatchContracts;

- (void)didSelectWatchTokens;

- (void)didSelectPublishedContracts;

- (void)didSelectNewContracts;

- (void)didSelectRestoreContract;

- (void)didSelectBackupContract;

- (void)didPressedQuit;

@end
