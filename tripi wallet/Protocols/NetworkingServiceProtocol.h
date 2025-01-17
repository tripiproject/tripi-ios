//
//  NetworkingServiceProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 16.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkDefenitions.h"

@protocol NetworkingServiceProtocol <NSObject>

- (instancetype _Nullable)initWithBaseUrl:(NSString *_Nonnull) baseUrl;

- (void)requestWithType:(RequestType) type
				   path:(NSString *_Nonnull) path
			  andParams:(NSDictionary *_Nullable) param
	 withSuccessHandler:(void (^ _Nullable)(id _Nonnull responseObject)) success
	  andFailureHandler:(void (^ _Nullable)(NSError *_Nonnull error, NSString *_Nullable message)) failure;

@optional
@property (copy, nonatomic) NSString * _Nullable accesToken;

@end
