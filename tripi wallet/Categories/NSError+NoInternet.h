//
//  NSError+NoInternet.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 03.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (NoInternet)

- (BOOL)isNoInternetConnectionError;

@end
