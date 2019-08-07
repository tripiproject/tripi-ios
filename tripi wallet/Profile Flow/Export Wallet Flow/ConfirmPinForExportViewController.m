//
//  ConfirmPinForExportViewController.m
//  tripi wallet
//
//  Created by Heaving Line on 12.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ConfirmPinForExportViewController.h"
#import "Presentable.h"

@interface ConfirmPinForExportViewController () <CAAnimationDelegate, Presentable>

@property (assign, nonatomic) BOOL shoudKeboardDismiss;
@property (assign, nonatomic) BOOL editingStarted;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end


@implementation ConfirmPinForExportViewController

@synthesize delegate;

- (void)viewDidLoad {

	[super viewDidLoad];

	NSInteger textfieldsWithButtonHeight = 250;

	self.bottomConstraintForCancelButton.constant = self.view.frame.size.height / 2. - textfieldsWithButtonHeight / 2.;

	[self configPasswordView];
    [self configLocalization];
}

- (void)willMoveToParentViewController:(UIViewController *) parent {

}

- (void)viewDidAppear:(BOOL) animated {

	[super viewDidAppear:animated];
	if (self.editingStarted) {
		[self startEditing];
	}
}

- (void)viewWillDisappear:(BOOL) animated {

	[super viewWillDisappear:animated];
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Configuration

- (void)configPasswordView {

	self.passwordView.delegate = self;
}

- (void)configLocalization {
    self.titleLabel.text = NSLocalizedString(@"Confirm PIN", @"Export Passphrase Controllers Title");
    [self.cancelButton setTitle:NSLocalizedString(@"CANCEL", @"CANCEL button") forState:UIControlStateNormal];
}

#pragma mark - Keyboard

- (void)keyboardWillShow:(NSNotification *) sender {

	CGRect end = [[sender userInfo][UIKeyboardFrameEndUserInfoKey] CGRectValue];
	self.bottomConstraintForCancelButton.constant = end.size.height;
	[self.view layoutIfNeeded];
}

- (void)keyboardWillHide:(NSNotification *) sender {

	dispatch_async (dispatch_get_main_queue (), ^{
		[self startEditing];
	});
}

- (void)startEditing {

	self.editingStarted = YES;
	[self.passwordView clearPinTextFields];
	[self.passwordView becameFirstResponder];
}

- (void)stopEditing {

	self.editingStarted = NO;
	[self.view endEditing:YES];
}

#pragma mark - Configuration

#pragma mark - Privat Methods

#pragma mark - Actions

#pragma mark PasswordViewDelegate

- (void)confirmPinWithDigits:(NSString *) digits {

	self.shoudKeboardDismiss = YES;

	if ([self.delegate respondsToSelector:@selector (passwordDidEntered:)]) {
		[self.delegate passwordDidEntered:digits];
	}
}

- (IBAction)actionCancel:(id) sender {
	self.shoudKeboardDismiss = YES;
	if ([self.delegate respondsToSelector:@selector (confirmPasswordDidCanceled)]) {
		[self.delegate confirmPasswordDidCanceled];
	}
}

- (void)showLoginFields {

	self.passwordView.hidden = NO;
	self.cancelButton.hidden = NO;
	[self.passwordView becameFirstResponder];
}

- (void)applyFailedPasswordAction {

	[self.passwordView accessPinDenied];
	[self.passwordView clearPinTextFields];
	[self.passwordView becameFirstResponder];
}

- (IBAction)didVoidTapAction:(id) sender {
}


@end
