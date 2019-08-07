//
//  ChangeContractLocatlNameViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 30.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChangeContractLocatlNameViewControllerLight.h"
#import "TextFieldParameterView.h"

@interface ChangeContractLocatlNameViewControllerLight ()

@end

@implementation ChangeContractLocatlNameViewControllerLight

- (TextFieldWithLine*)changeNameTextFiled {

    TextFieldWithLine *textField = (TextFieldWithLine *)[[[NSBundle mainBundle] loadNibNamed:@"TextFieldWithLineLightSend" owner:self options:nil] lastObject];
    return textField;
}

@end
