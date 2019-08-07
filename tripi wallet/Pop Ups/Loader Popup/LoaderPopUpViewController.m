//
//  LoaderPopUpViewController.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 08.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LoaderPopUpViewController.h"
#import "SpinnerView.h"

@interface LoaderPopUpViewController ()
@property (weak, nonatomic) IBOutlet SpinnerView *LoaderView;

@end

@implementation LoaderPopUpViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)reloadLoaderAnimation {
	[self.LoaderView startAnimating];
}
@end
