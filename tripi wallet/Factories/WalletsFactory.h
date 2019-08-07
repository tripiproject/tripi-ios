//
//  WalletsFactory.h
//  tripi wallet
//
//  Created by Heaving Line on 19.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wallet.h"

@interface WalletsFactory : NSObject

- (Wallet *)createNewWalletWithName:(NSString *) name pin:(NSString *) pin;

- (Wallet *)createNewWalletWithName:(NSString *) name pin:(NSString *) pin seedWords:(NSArray *) seedWords;

@end
