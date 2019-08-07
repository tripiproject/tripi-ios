//
//  SourceCodeViewController.m
//  tripi wallet
//
//  Created by Heaving Line on 13.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SourceCodeViewController.h"

@interface SourceCodeViewController ()

@property (weak, nonatomic) IBOutlet UITextView *codeTextView;

@end

@implementation SourceCodeViewController

@synthesize delegate, sourceCode;

#pragma mark - Lifecycle

- (void)viewDidLoad {

	[super viewDidLoad];
	self.codeTextView.attributedText = self.sourceCode;
	self.codeTextView.editable = NO;
}

#pragma mark - IBActions

- (IBAction)doBackAction:(id) sender {

	if ([self.delegate respondsToSelector:@selector (didPressedBack)]) {

		[self.delegate didPressedBack];
	}
}

@end
