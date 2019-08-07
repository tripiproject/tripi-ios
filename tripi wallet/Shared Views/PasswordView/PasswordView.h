//
//  PasswordView.h
//  tripi wallet
//
//  Created by Heaving Line on 17.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, PasswordViewStyle) {
	CustomStyle,
	LightStyle,
	LightPopupStyle,
	DarkPopupStyle,
	DarkStyle,
	SameStyle
};

typedef NS_ENUM(NSUInteger, PasswordLenghtType) {
	ShortType,
	LongType
};

@protocol PasswordViewDelegate <NSObject>

- (void)confirmPinWithDigits:(NSString *) digits;

@end

@interface PasswordView : UIView

@property (weak, nonatomic) id <PasswordViewDelegate> delegate;

- (void)becameFirstResponder;

- (void)setEditingDisabled:(BOOL) disabled;

- (void)setTextFont:(UIFont *) textFont
		  fontColor:(UIColor *) fontColor
	 underlineColor:(UIColor *) color
		  tintColor:(UIColor *) tintColor
	errorFieldColor:(UIColor *) errorColor;

- (void)setStyle:(PasswordViewStyle) style
		  lenght:(PasswordLenghtType) lenghtType;

- (NSString *)getDigits;

- (BOOL)isValidPasswordLenght;

- (void)actionIncorrectPin;

- (void)accessPinDenied;

- (void)clearPinTextFields;

@end
