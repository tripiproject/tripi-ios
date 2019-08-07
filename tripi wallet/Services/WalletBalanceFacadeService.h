//
//  WalletBalanceFacadeService.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^WalletBalanceHendler)(BOOL succes);

@interface WalletBalanceFacadeService : NSObject <Clearable>

- (instancetype)initWithRequestService:(id <Requestable>) requestManager andStorageService:(CoreDataService*) storageService;

- (TRIPIBigNumber*)lastBalance;
- (TRIPIBigNumber*)lastUnconfirmedBalance;
- (NSString*)lastUpdateDateSring;

- (void)updateForAddreses:(NSArray *) keyAddreses withHandler:(WalletBalanceHendler) handler;
- (void)updateBalansesWithObject:(NSDictionary *) dataDictionary withHandler:(WalletBalanceHendler) handler;

@end
