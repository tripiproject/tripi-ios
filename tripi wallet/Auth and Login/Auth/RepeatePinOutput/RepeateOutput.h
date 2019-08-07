//
//  RepeateOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RepeateOutputDelegate.h"

@protocol RepeateOutput <NSObject>

@property (weak, nonatomic) id <RepeateOutputDelegate> delegate;

- (void)endCreateWalletWithError:(NSError *) error;

- (void)showFailedStatus;


@end
