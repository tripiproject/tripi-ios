//
//  RecieveOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "RecieveOutputDelegate.h"

typedef NS_ENUM(NSUInteger, ReciveOutputType) {
	ReciveTokenOutput,
	ReciveWalletOutput
};

@protocol RecieveOutput <NSObject>

@required
@property (nonatomic, weak) id <RecieveOutputDelegate> delegate;
@property (copy, nonatomic) NSString *walletAddress;
@property (nonatomic, assign) ReciveOutputType type;
@property (copy, nonatomic) NSString *balanceText;
@property (copy, nonatomic) NSString *shortBalanceText;
@property (copy, nonatomic) NSString *unconfirmedBalanceText;
@property (copy, nonatomic) NSString *currency;

- (void)updateControls;

@optional
@property (copy, nonatomic) NSString *tokenAddress;

@end
