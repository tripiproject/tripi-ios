//
//  WalletHistoryEntity+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 01.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletHistoryEntity+CoreDataClass.h"

@interface WalletHistoryEntity (Extension) <HistoryElementProtocol>

@property (strong, nonatomic) TRIPIBigNumber *amount;

@end
