//
//  WalletOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WalletOutputDelegate <NSObject>

@required
- (void)didReloadTableViewData;

- (void)didRefreshTableViewBalanceLocal:(BOOL) isLocal;

- (void)didShowQRCodeScan;

- (void)didShowAddressControl;


@end
