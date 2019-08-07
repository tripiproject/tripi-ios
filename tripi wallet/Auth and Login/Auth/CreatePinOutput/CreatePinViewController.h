//
//  CreatePinViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 30.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "AuthCoordinator.h"
#import "PinController.h"
#import "CreatePinOutput.h"
#import "CreatePinOutputDelegate.h"
#import "PasswordView.h"

@interface CreatePinViewController : PinController <CreatePinOutput, PasswordViewDelegate>

@property (weak, nonatomic) IBOutlet PasswordView *passwordView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *gradientViewBottomOffset;

@end
