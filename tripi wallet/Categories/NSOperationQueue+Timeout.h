//
//  NSOperationQueue+Timeout.h
//  tripi wallet
//
//  Created by Heaving Line on 01.12.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSOperationQueue (Timeout)

- (NSOperation *)addOperationWithBlock:(void (^)(NSOperation *operation))block timeout:(CGFloat)timeout
                          timeoutBlock:(void (^)(void))timeoutBlock;

@end
