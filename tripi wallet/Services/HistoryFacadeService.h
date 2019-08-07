//
//  HistoryFacadeService.h
//  tripi wallet
//
//  Created by Heaving Line on 01.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Requestable;
@class RecieptLogDTO;

typedef void(^HistoryHendler)(BOOL succes);

@interface HistoryFacadeService : NSObject <Clearable>

@property (assign, nonatomic, readonly) NSInteger totalItems;

- (instancetype)initWithRequestService:(id <Requestable>) requestManager andStorageService:(CoreDataService*) storageService;
- (void)updateHistroyForAddresses:(NSArray *) keyAddreses withPage:(NSInteger) page withHandler:(HistoryHendler) handler;
- (void)updateHistoryElementWithTxHash:(NSString *) txHash withSuccessHandler:(void (^)(HistoryElement *historyItem)) success andFailureHandler:(void (^)(NSError *error, NSString *message)) failure;
- (void)updateHistoryElementWithDict:(NSDictionary *) dataDictionary;

- (NSArray<RecieptLogDTO*>*)getLogsDTOSWithReceit:(TransactionReceipt *) receipt;
- (NSArray<WalletHistoryEntity*>*)historyForWatch;


- (TransactionReceipt*)getRecieptWithTxHash:(NSString *) txHash;
- (void)cancelOperations;

@end
