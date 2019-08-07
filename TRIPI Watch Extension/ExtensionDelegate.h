//
//  ExtensionDelegate.h
//  TRIPI Watch Extension
//
//  Created by Sharaev Vladimir on 06.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@protocol ExtensionDelegateDelegate <NSObject>

- (void)applicationDidFinishLaunching;

- (void)applicationDidBecomeActive;

- (void)applicationWillResignActive;

@end

@interface ExtensionDelegate : NSObject <WKExtensionDelegate>

@end
