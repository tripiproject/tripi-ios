//
//  HistoryElementProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 19.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPIBigNumber.h"

@protocol HistoryElementProtocol <NSObject>

@property (copy, nonatomic) NSString *address;
@property (strong, nonatomic) TRIPIBigNumber *amount;
@property (copy, nonatomic) NSString *amountString;
@property (copy, nonatomic) NSString *transactionHash;
@property (strong, nonatomic) NSNumber *dateNumber;
@property (copy, nonatomic) NSString *shortDateString;
@property (copy, nonatomic) NSString *fullDateString;
@property (assign, nonatomic) BOOL hasReceipt;
@property (strong, nonatomic) NSArray *fromAddresses;
@property (strong, nonatomic) NSArray *toAddresses;
@property (assign, nonatomic) BOOL send;
@property (assign, nonatomic) BOOL confirmed;
@property (assign, nonatomic) BOOL internal;
@property (assign, nonatomic) BOOL contracted;
@property (copy, nonatomic) NSString* currency;
@property (assign, nonatomic) NSInteger blockNumber;
@property (copy, nonatomic) NSString* blockHash;


- (BOOL)isEqualElementWithoutConfimation:(id <HistoryElementProtocol>) object;
- (void)setupWithObject:(id) object;
- (NSString *)formattedDateStringSinceCome;
- (NSDictionary *)dictionaryFromElementForWatch;
    
@optional
@property (assign, nonatomic) BOOL isSmartContractCreater;
@property (strong, nonatomic) TRIPIBigNumber *fee;
@property (strong, nonatomic) NSString *decimals;

@end
