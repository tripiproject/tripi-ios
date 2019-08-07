//
//  NSError+NoInternet.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 03.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation NSError (NoInternet)

- (BOOL)isNoInternetConnectionError {
	return ([self.domain isEqualToString:NSURLErrorDomain] && (self.code == NSURLErrorNotConnectedToInternet));
}

@end
