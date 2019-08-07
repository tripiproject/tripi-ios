//
//  RestoreWalletOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestoreWalletOutputDelegate.h"

@protocol RestoreWalletOutput <NSObject>

@property (weak, nonatomic) id <RestoreWalletOutputDelegate> delegate;

- (void)restoreSucces;

- (void)restoreFailed;

@end
