//
//  NewPaymentOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 04.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NewPaymentOutputDelegate <NSObject>

- (void)didPresseQRCodeScaner;

- (void)didPresseChooseToken;

- (void)didSelectTokenAddress:(ContracBalancesObject*) tokenAddress;

- (void)didPresseSendActionWithAddress:(NSString *) address
							 andAmount:(TRIPIBigNumber *) amount
								   fee:(TRIPIBigNumber *) fee
							  gasPrice:(TRIPIBigNumber *) gasPrice
							  gasLimit:(TRIPIBigNumber *) gasLimit;

- (void)didViewLoad;

- (void)didViewAppear;

- (BOOL)shoudStartEditingAddress;

- (void)changeToStandartOperation;

@end
