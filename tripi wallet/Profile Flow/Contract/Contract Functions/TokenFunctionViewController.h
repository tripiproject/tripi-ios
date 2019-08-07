//
//  TokenFunctionViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InterfaceInputFormModel.h"
#import "ContractCoordinator.h"
#import "ContractFunctionsOutput.h"

@class Token;

@interface TokenFunctionViewController : BaseViewController <ContractFunctionsOutput>

@end
