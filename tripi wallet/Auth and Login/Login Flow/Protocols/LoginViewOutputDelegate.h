//
//  LoginViewOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 26.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginViewOutputDelegate <NSObject>

- (void)passwordDidEntered:(NSString *) password;

- (void)confirmPasswordDidCanceled;

@end
