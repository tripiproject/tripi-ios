//
//  AddressControlOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 02.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressControlOutputDelegate.h"
#import "Presentable.h"
#import "BTCKey.h"

@protocol AddressControlOutput <Presentable>

@property (weak, nonatomic) id <AddressControlOutputDelegate> delegate;
@property (copy, nonatomic) NSArray <WalletBalancesObject *> *arrayWithAddressesAndBalances;

- (void)reloadData;

@end
