//
//  SendInfoItem.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 18.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SendInfoItemType) {
	SendInfoItemTypeTripi,
	SendInfoItemTypeToken,
	SendInfoItemTypeInvalid
};

@interface SendInfoItem : NSObject

@property (nonatomic, readonly) NSString *tripiAddress;
@property (nonatomic, readonly) BTCKey *tripiAddressKey;
@property (nonatomic, readonly) NSString *tokenAddress;
@property (nonatomic, readonly) NSString *amountString;
@property (nonatomic, readonly) NSString *label;
@property (nonatomic, readonly) NSString *message;
@property (nonatomic, readonly) NSString *fromTripiAddress;
@property (nonatomic, readonly) BTCKey *fromTripiAddressKey;
@property (nonatomic, readonly) SendInfoItemType type;

- (instancetype)initWithString:(NSString *) string;

- (instancetype)initWithTripiAddress:(NSString *) tripiAddress
					   tokenAddress:(NSString *) tokenAddress
					   amountString:(NSString *) amountString;

- (instancetype)initWithTripiAddress:(NSString *) tripiAddress
					   tokenAddress:(NSString *) tokenAddress
					   amountString:(NSString *) amountString
					fromTripiAddress:(NSString *) fromAddress;

- (instancetype)initWithTripiAddressKey:(BTCKey *) tripiAddressKey
						  tokenAddress:(NSString *) tokenAddress
						  amountString:(NSString *) amountString
					fromTripiAddressKey:(BTCKey *) fromAddressKey;

- (NSString *)stringByItem;

@end
