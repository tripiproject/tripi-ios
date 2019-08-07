//
//  TextFieldParameterView.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbiTextFieldWithLine.h"
#import "ParameterInputFieldProtocol.h"

@interface TextFieldParameterView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) UITextField <ParameterInputFieldProtocol> *textField;

- (BOOL)isValidParameter;

@end
