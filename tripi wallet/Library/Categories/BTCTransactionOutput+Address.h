//
//  BTCTransactionOutput+Address.h
//  tripi wallet
//
//  Created by Heaving Line on 17.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <CoreBitcoin/CoreBitcoin.h>

@interface BTCTransactionOutput (Address)

@property (copy, nonatomic) NSString *runTimeAddress;

@end
