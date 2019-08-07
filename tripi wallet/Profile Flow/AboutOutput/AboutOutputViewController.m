//
//  AboutOutputViewController.m
//  tripi wallet
//
//  Created by Heaving Line on 28.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "AboutOutputViewController.h"

@interface AboutOutputViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *logoImage;
@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyAndVersionText;

@end

@implementation AboutOutputViewController

@synthesize delegate;

#pragma mark - Lifecycle

- (void)viewDidLoad {

	[super viewDidLoad];
	[self configLogo];
	[self configText];
    [self configLocalization];
}

#pragma mark - Configuration

- (void)configLocalization {
    
    self.titleTextLabel.text = NSLocalizedString(@"About", @"About Controllers Title");
}

- (void)configLogo {

	UIImage *originalImage = [UIImage imageNamed:@"new-logo.png"];
	UIImage *tintedImage = [originalImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
	self.logoImage.tintColor = [self logoColor];
	self.logoImage.image = tintedImage;
}

- (void)configText {

	NSString *text = [NSString stringWithFormat:@"© 2017 Tripi\nVersion %@ (%@)", [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"], [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey]];
	self.companyAndVersionText.text = NSLocalizedString(text, @"");
}

- (UIColor *)logoColor {
	return lightDarkGrayColor ();
}

#pragma mark - Actions

- (IBAction)actionBack:(id) sender {

	[self.delegate didBackPressed];
}


@end
