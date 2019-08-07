//
//  RepeateViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PinController.h"
#import "AuthCoordinator.h"
#import "RepeateOutputDelegate.h"
#import "RepeateOutput.h"
#import "PasswordView.h"

@interface RepeateViewController : PinController <RepeateOutput, PasswordViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *gradientViewBottomOffset;
@property (weak, nonatomic) IBOutlet PasswordView *passwordView;

@end
