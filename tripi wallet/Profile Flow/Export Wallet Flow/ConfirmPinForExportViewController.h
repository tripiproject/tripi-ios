//
//  ConfirmPinForExportViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 12.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PinController.h"
#import "LoginViewOutput.h"
#import "LoginViewOutputDelegate.h"
#import "PasswordView.h"

@interface ConfirmPinForExportViewController : PinController <LoginViewOutput, PasswordViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraintForCancelButton;
@property (weak, nonatomic) IBOutlet PasswordView *passwordView;

@end
