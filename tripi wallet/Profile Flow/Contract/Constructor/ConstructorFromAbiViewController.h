//
//  ConstructorFromAbiViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 17.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InterfaceInputFormModel.h"
#import "ConstructorAbiOutput.h"
#import "AbiTextFieldWithLine.h"

@interface ConstructorFromAbiViewController : BaseViewController <ScrollableContentViewController, ConstructorAbiOutput, AbiTextFieldWithLineDelegate>

@property (weak, nonatomic) UITextField *localContractNameTextField;
@property (weak, nonatomic) UIButton *nextButton;

- (IBAction)didPressedNextAction:(id) sender;

- (IBAction)didPressedCancelAction:(id) sender;

- (IBAction)didPressedNextOnTextField:(id) sender;

- (BOOL)isTextFieldsFilled;

@end
