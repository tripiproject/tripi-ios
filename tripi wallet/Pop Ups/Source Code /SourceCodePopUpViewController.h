//
//  SourceCodePopUpViewController.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 27.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopUpViewController.h"

@interface SourceCodePopUpViewController : PopUpViewController

@property (nonatomic, weak) id <PopUpWithTwoButtonsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
