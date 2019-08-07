//
//  SmartContractMenuViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContractCoordinator.h"
#import "SmartContractMenuOutput.h"

@interface SmartContractMenuViewController : BaseViewController <SmartContractMenuOutput>

@property (strong, nonatomic) NSArray<NSString *> *contractTypes;

@end
