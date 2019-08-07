//
//  ContractInfoFacade.h
//  tripi wallet
//
//  Created by Heaving Line on 09.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContracBalancesObject.h"

@interface ContractInfoFacade : NSObject

- (NSArray <ContracBalancesObject *> *)arrayOfStingValuesOfTokenBalanceWithToken:(Contract *) token;
- (NSArray <ContracBalancesObject *> *)sortedArrayOfStingValuesOfTokenBalanceWithToken:(Contract *) token;

@end
