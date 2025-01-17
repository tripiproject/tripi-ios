//
//  FirstAuthViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AuthCoordinator.h"
#import "FirstAuthOutputDelegate.h"
#import "FirstAuthOutput.h"

@interface FirstAuthViewController : BaseViewController <FirstAuthOutput>

@property (weak, nonatomic) id <FirstAuthOutputDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *createButton;
@property (weak, nonatomic) IBOutlet UIButton *restoreButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomButtonsOffset;
@property (weak, nonatomic) IBOutlet UILabel *invitationTextLabel;

@end
