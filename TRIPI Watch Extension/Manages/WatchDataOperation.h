//
//  WatchDataOperation.h
//  tripi wallet
//
//  Created by Heaving Line on 14.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WatchDataOperation : NSObject

extern NSString *const groupFileName;

+ (NSDictionary *)getDictFormGroupFileWithName:(NSString *) fileName;

+ (NSString *)saveGroupFileWithName:(NSString *) fileName dataSource:(NSDictionary *) dataSource;

+ (void)saveWalletInfo:(NSDictionary *) walletInfo;

+ (NSDictionary *)getWalletInfo;

@end
