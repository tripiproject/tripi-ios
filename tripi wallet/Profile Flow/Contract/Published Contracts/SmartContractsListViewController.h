//
//  SmartContractsListViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PublishedContractListOutputDelegate.h"
#import "PublishedContractListOutput.h"
#import "RemoveContractTrainigView.h"

@interface SmartContractsListViewController : BaseViewController <PublishedContractListOutput>

@property (weak, nonatomic) RemoveContractTrainigView *trainingView;

@end
