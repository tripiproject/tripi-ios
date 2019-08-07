//
//  LanguageOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LanguageOutputDelegate.h"

@protocol LanguageOutput <NSObject>

@property (nonatomic, weak) id <LanguageOutputDelegate> delegate;

@end
