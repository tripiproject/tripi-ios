//
//  TokenDetailsViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 24.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenDetailsViewControllerDark.h"

@interface TokenDetailsViewControllerDark ()

@property (weak, nonatomic) IBOutlet UILabel *activityTextLabel;

@end

@implementation TokenDetailsViewControllerDark

- (void)viewDidLoad {
    [super viewDidLoad];
    self.activityTextLabel.text = NSLocalizedString(@"Activity", @"");
}

@end
