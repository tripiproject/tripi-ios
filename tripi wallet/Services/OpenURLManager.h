//
//  OpenURLManager.h
//  tripi wallet
//
//  Created by Heaving Line on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OpenURLManager : NSObject <Clearable>

- (void)storeAuthToYesWithAdddress:(NSString *) address;

- (void)launchFromUrl:(NSURL *) url;

- (void)clear;

@end
