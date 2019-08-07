//
//  FirstAuthOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FirstAuthOutputDelegate <NSObject>

- (void)didLoginPressed;

- (void)didRestoreButtonPressed;

- (void)didCreateNewButtonPressed;

@end
