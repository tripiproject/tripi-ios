//
//  WalletManagerRequestAdapter.h
//  tripi wallet
//
//  Created by Heaving Line on 20.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WalletManagerRequestAdapter : NSObject

- (void)getunspentOutputs:(NSArray *) keyAddreses withSuccessHandler:(void (^)(NSArray *responseObject)) success andFailureHandler:(void (^)(NSError *error, NSString *message)) failure;

@end
