//
//  WatchTokensFacadeService.h
//  tripi wallet
//
//  Created by Heaving Line on 24.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^WatchTokenName)(NSString* name, NSError* error);

@interface WatchTokensFacadeService : NSObject

- (void)getTokenNameWithAddress:(NSString *) address withHandler:(WatchTokenName) handler;

- (BOOL)createTokenWithTokenName:(NSString*) name andAddress:(NSString*) address andErrorString:(NSString **) errorString;

@end
