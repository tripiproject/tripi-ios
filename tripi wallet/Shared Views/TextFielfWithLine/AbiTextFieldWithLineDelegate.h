//
//  AbiTextFieldWithLineDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbiTextFieldWithLineDelegate <NSObject>

@optional
- (void)textDidChange;

- (BOOL)textFieldShouldBeginEditing:(UITextField *) textField;

- (void)textFieldDidBeginEditing:(UITextField *) textField;

- (BOOL)textFieldShouldEndEditing:(UITextField *) textField;

- (void)textFieldDidEndEditing:(UITextField *) textField;

- (BOOL)textField:(UITextField *) textField shouldChangeCharactersInRange:(NSRange) range replacementString:(NSString *) string;

- (BOOL)textFieldShouldClear:(UITextField *) textField;

- (BOOL)textFieldShouldReturn:(UITextField *) textField;

@end
