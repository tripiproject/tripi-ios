//
//  TokenDetailOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 24.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TokenDetailOutputDelegate.h"
#import "Contract.h"
#import "TokenDetailDataDisplayManager.h"
#import "Presentable.h"

@protocol TokenDetailOutput <NSObject, Presentable>

@property (nonatomic, weak) id <TokenDetailOutputDelegate> delegate;
@property (nonatomic, strong) Contract *token;
@property (nonatomic, weak) id <TokenDetailDataDisplayManager> source;

- (void)reloadHistorySource;
- (void)reloadTokenInfo;

- (void)conndectionFailed;
- (void)conndectionSuccess;

- (void)showUnsubscribeContractScreen;
- (void)failedToUpdateHistory;

@end
