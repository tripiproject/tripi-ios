//
//  LoginViewOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 26.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewOutputDelegate.h"
#import "PasswordView.h"

@protocol LoginViewOutput <NSObject>

@property (weak, nonatomic) id <LoginViewOutputDelegate> delegate;

- (void)applyFailedPasswordAction;

@optional
- (void)startEditing;

- (void)stopEditing;

- (void)clearTextFileds;

- (void)setInputsDisable:(BOOL) disable;

@end
