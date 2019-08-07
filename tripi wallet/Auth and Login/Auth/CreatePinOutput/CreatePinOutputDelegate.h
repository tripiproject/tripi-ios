//
//  CreatePinOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CreatePinOutputDelegate <NSObject>

- (void)didCancelPressedOnCreateWallet;

- (void)didEntererFirstPin:(NSString *) pin;

@end
