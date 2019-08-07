//
//  WalletNameOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WalletNameOutputDelegate.h"

@protocol WalletNameOutput <NSObject>

@property (weak, nonatomic) id <WalletNameOutputDelegate> delegate;

@end
