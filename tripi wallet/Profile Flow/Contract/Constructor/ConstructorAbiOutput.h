//
//  ConstructorAbiOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConstructorAbiOutputDelegate.h"
#import "InterfaceInputFormModel.h"
#import "Presentable.h"

@protocol ConstructorAbiOutput <Presentable>

@property (weak, nonatomic) id <ConstructorAbiOutputDelegate> delegate;
@property (strong, nonatomic) InterfaceInputFormModel *formModel;
@property (copy, nonatomic) NSString *contractTitle;

@end
