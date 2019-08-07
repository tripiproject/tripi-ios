//
//  ContractFunctionsOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"
#import "InterfaceInputFormModel.h"
#import "ContractFunctionsOutputDelegate.h"

@protocol ContractFunctionsOutput <Presentable>

@property (strong, nonatomic) InterfaceInputFormModel *formModel;
@property (weak, nonatomic) id <ContractFunctionsOutputDelegate> delegate;
@property (weak, nonatomic) Contract *token;

-(void)showUnsubscribeContractScreen;

@end
