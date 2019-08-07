//
//  ContractCreationEndOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ContractCreationEndOutputDelegate <NSObject>

- (void)didPressedQuit;

- (void)finishStepFinishDidPressed:(TRIPIBigNumber *) fee gasPrice:(TRIPIBigNumber *) gasPrice gasLimit:(TRIPIBigNumber *) gasLimit;

- (void)finishStepBackDidPressed;

- (void)finishStepCancelDidPressed;


@end
