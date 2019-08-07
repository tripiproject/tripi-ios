//
//  SecurityPopupViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 27.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTextField.h"
#import "LoginViewOutput.h"
#import "PasswordView.h"

@interface SecurityPopupViewController : PopUpViewController <LoginViewOutput, PasswordViewDelegate>

@property (nonatomic, weak) id <SecurityPopupViewControllerDelegate> popupDelegate;
@property (weak, nonatomic) IBOutlet PasswordView *passwordView;

- (void)applyFailedPasswordAction;

@end
