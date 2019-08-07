//
//  RequestManager.h
//  tripi wallet
//
//  Created by Heaving Line on 20.05.17.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Requestable.h"

extern NSString *const TCAAuthFailed;

@interface RequestManager : NSObject <Requestable>

- (instancetype)initWithBaseUrl:(NSString *) baseUrl;

@end
