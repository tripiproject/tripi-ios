//
//  WalletBalancesObject.h
//  tripi wallet
//
//  Created by Heaving Line on 09.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WalletBalancesObject : NSObject

@property (copy, nonatomic) NSString *shortBalanceStringBalance;
@property (copy, nonatomic) NSString *longBalanceStringBalance;
@property (copy, nonatomic) NSString *addressString;
@property (strong, nonatomic) TRIPIBigNumber *balance;

@end
