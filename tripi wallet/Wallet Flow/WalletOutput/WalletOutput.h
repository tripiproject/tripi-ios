//
//  WalletOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WalletOutputDelegate.h"

@class WalletTableSource;

@protocol WalletOutput <NSObject>

@property (strong, nonatomic) WalletTableSource *tableSource;
@property (weak, nonatomic) id <WalletOutputDelegate> delegate;

- (void)setWallet:(id <Spendable>) wallet;
- (void)failedToUpdateHistory;

- (void)conndectionFailed;
- (void)conndectionSuccess;

- (void)startLoadingIfNeeded;
- (void)stopLoading;

- (void)reloadHeader:(id <Spendable>) wallet;
- (void)reloadHistorySource;

@end
