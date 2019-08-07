//
//  EnableFingerprintViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 27.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnableFingerprintOutput.h"
#import "EnableFingerprintOutputDelegate.h"

@interface EnableFingerprintViewController : UIViewController <EnableFingerprintOutput>

@property (weak, nonatomic) id <EnableFingerprintOutputDelegate> delegate;

@end
