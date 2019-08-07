//
//  ParameterInputFieldProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 11.12.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AbiTextFieldWithLineDelegate;
@class AbiinterfaceInput;

@protocol ParameterInputFieldProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect) frame andInterfaceItem:(AbiinterfaceInput *) item;
- (BOOL)isValidParameterText;

@property (weak, nonatomic) id <AbiTextFieldWithLineDelegate> customDelegate;
@property (strong, nonatomic) AbiinterfaceInput *item;

@end
