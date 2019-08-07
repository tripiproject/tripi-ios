//
//  LanguageOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LanguageOutputDelegate <NSObject>

- (void)didLanguageChanged;

- (void)didBackPressed;

@end
