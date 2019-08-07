//
//  ContractHistoryFacadeService.h
//  tripi wallet
//
//  Created by Heaving Line on 12.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Requestable;

@interface ContractHistoryFacadeService : NSObject <Clearable>

@property (assign, nonatomic, readonly) NSInteger totalItems;

- (instancetype)initWithRequestService:(id <Requestable>) requestManager andStorageService:(CoreDataService*) storageService;

- (void)updateHistroyForAddresses:(NSArray *) keyAddreses withPage:(NSInteger) page withContractAddress:(NSString*) contractAddress withCurrency:(NSString*) currency withDecimals:(NSString*) decimals withHandler:(HistoryHendler) handler;
- (TransactionReceipt*)getRecieptWithTxHash:(NSString *) txHash;
- (void)cancelOperations;

@end
