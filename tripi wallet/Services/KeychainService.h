//
//  KeychainService.h
//  tripi wallet
//
//  Created by Heaving Line on 29.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeychainService : NSObject

- (BOOL)setObject:(id _Nonnull ) object forKey:(id _Nonnull )key;
- (id _Nonnull )objectForKey:(id _Nonnull )key;
- (BOOL)removeObjectForKey:(id _Nonnull ) key;
- (void)touchIDString:(void (^_Nonnull)(NSString * _Nullable string, NSError * _Nullable error)) handler;
- (void)addTouchIdString:(NSString *_Nonnull) touchIDString;

@end
