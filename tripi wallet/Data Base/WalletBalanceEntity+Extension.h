//
//  WalletBalanceEntity+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletBalanceEntity+CoreDataClass.h"

@interface WalletBalanceEntity (Extension)

- (TRIPIBigNumber*)balance;
- (TRIPIBigNumber*)unconfirmedBalance;
- (NSString*)fullDateString;

@end
