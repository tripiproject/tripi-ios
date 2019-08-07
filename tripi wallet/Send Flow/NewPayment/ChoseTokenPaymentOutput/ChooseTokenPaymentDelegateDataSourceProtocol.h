//
//  ChooseTokenPaymentDelegateDataSourceProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseTokekPaymentDelegateDataSourceDelegate;

@class Contract;

@protocol ChooseTokenPaymentDelegateDataSourceProtocol <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) Contract *activeToken;
@property (weak, nonatomic) id <ChooseTokekPaymentDelegateDataSourceDelegate> delegate;
@property (copy, nonatomic) NSArray <Contract *> *tokens;

@end
