//
//  TextFieldParameterView.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TextFieldParameterView.h"

@interface TextFieldParameterView ()

@end

@implementation TextFieldParameterView

- (BOOL)isValidParameter {
    
    return [self.textField isValidParameterText];
}

@end
