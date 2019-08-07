//
//  RequestManagerAdapter.h
//  tripi wallet
//
//  Created by Heaving Line on 21.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TRIPIBigNumber;

@protocol RequestManagerAdapter <NSObject>

@required
- (id)adaptiveDataForHistory:(id) data;

- (id)adaptiveDataForOutputs:(id) data;

- (id)adaptiveDataForBalance:(id) balance;

- (TRIPIBigNumber *)adaptiveDataForFeePerKb:(id) data;


@end
