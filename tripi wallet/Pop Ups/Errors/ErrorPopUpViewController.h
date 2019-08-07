//
//  ErrorPopUpViewController.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 03.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "PopUpViewController.h"

@interface ErrorPopUpViewController : PopUpViewController

@property (nonatomic, weak) id <PopUpWithTwoButtonsViewControllerDelegate> delegate;

- (void)setOnlyCancelButton;

@end
