//
//  PinViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 13.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "PinController.h"
#import "CreatePinRootController.h"
#import "ChangePinOutput.h"
#import "PasswordView.h"

@interface PinViewController : PinController <ChangePinOutput, PasswordViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomForButtonsConstraint;
@property (weak, nonatomic) IBOutlet PasswordView *passwordView;

@end


