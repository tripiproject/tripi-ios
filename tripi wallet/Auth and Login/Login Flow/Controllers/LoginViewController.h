//
//  LoginViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PinController.h"
#import "LoginViewOutput.h"
#import "LoginViewOutputDelegate.h"
#import "PasswordView.h"

@interface LoginViewController : PinController <LoginViewOutput, PasswordViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraintForCancelButton;
@property (weak, nonatomic) IBOutlet PasswordView *passwordView;

@end
