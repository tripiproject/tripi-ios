//
//  ConstructorAbiOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResultTokenInputsModel.h"

@protocol ConstructorAbiOutputDelegate <NSObject>

- (void)createStepOneNextDidPressedWithInputs:(NSArray<ResultTokenInputsModel *> *) inputs andContractName:(NSString *) contractName;

- (void)didPressedBack;

@end
