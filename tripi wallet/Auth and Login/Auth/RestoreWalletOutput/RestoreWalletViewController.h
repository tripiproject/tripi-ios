//
//  RestoreWalletViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 21.02.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AuthCoordinator.h"
#import "RestoreWalletOutput.h"
#import "Presentable.h"

@interface RestoreWalletViewController : BaseViewController <RestoreWalletOutput, Presentable>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomForButtonsConstraint;

@end
