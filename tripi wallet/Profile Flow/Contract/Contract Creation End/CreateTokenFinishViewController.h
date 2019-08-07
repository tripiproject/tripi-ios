//
//  CreateTokenFinishViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 17.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContractCreationEndOutput.h"
#import "GradientView.h"

@class ResultTokenInputsModel;

@protocol ContractCoordinatorDelegate;

@interface CreateTokenFinishViewController : BaseViewController <ContractCreationEndOutput>

@property (weak, nonatomic) IBOutlet GradientView *bottomGradientView;

@end
