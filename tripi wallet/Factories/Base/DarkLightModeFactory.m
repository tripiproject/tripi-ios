//
//  DarkLightModeFactory.m
//  tripi wallet
//
//  Created by Heaving Line on 23.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "DarkLightModeFactory.h"
#import "NSUserDefaults+Settings.h"

@implementation DarkLightModeFactory

- (NSString *)identifireDependsOnStyleWithIdentifire:(NSString *) identifire {
    
    NSString* appendString;
    
    if ([NSUserDefaults isDarkSchemeSetting]) {
        appendString = @"Dark";
    } else {
        appendString = @"Light";
    }
    
    return [identifire stringByAppendingString:appendString];
}


@end
