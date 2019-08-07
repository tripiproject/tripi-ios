//
//  ChoseTokenPaymentOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 04.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@protocol ChoseTokenPaymentOutputDelegate;
@protocol ChooseTokenPaymentDelegateDataSourceProtocol;

@class Contract;

@protocol ChoseTokenPaymentOutput <Presentable>

@property (weak, nonatomic) id <ChoseTokenPaymentOutputDelegate> delegate;
@property (strong, nonatomic) id <ChooseTokenPaymentDelegateDataSourceProtocol> delegateDataSource;

- (void)updateWithTokens:(NSArray <Contract *> *) tokens;

@end
