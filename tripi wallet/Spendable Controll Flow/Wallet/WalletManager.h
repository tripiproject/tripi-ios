//
//  WalletManager.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 14.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WalletManagering.h"

extern NSString *const kWalletDidChange;
extern NSString *const kWalletHistoryDidChange;

@interface WalletManager : NSObject <WalletManagering>

@end
