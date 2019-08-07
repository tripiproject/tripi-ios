//
//  ContractFunctionsOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ContractFunctionsOutputDelegate <NSObject>

- (void)didSelectFunctionIndexPath:(NSIndexPath *) indexPath withItem:(AbiinterfaceItem *) item andToken:(Contract *) token;

- (void)didDeselectFunctionIndexPath:(NSIndexPath *) indexPath withItem:(AbiinterfaceItem *) item;

- (void)didUnsubscribeFromDeletedContract:(Contract *) token;

@end
