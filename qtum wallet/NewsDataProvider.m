//
//  NewsDataProvider.m
//  qtum wallet
//
//  Created by Vladimir Lebedevich on 13.10.17.
//  Copyright © 2017 QTUM. All rights reserved.
//

#import "NewsDataProvider.h"
#import "NetworkingService.h"

@interface NewsDataProvider ()

@property (strong, nonatomic) NetworkingService* networkService;

@end

@implementation NewsDataProvider

+ (instancetype)sharedInstance {
    
    static NewsDataProvider *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super alloc] initUniqueInstance];
    });
    return instance;
}

- (instancetype)initUniqueInstance {
    
    self = [super init];
    
    if (self != nil) {
        
        [self authorise];
        _networkService = [[NetworkingService alloc] initWithBaseUrl:@"https://api.medium.com/v1"];
        _networkService.accesToken = @"2df96f4271bd76950229972d74a9bc6d456bfae100b1201c90a8947f647733343";
        [self authorise];
    }
    return self;
}

-(void)authorise {
    
    [self.networkService requestWithType:GET path:@"me" andParams:nil withSuccessHandler:^(id  _Nonnull responseObject) {
        
    } andFailureHandler:^(NSError * _Nonnull error, NSString * _Nullable message) {
        
    }];
}

-(void)getAllMyPosts {
    
    [self.networkService requestWithType:GET path:@"me" andParams:nil withSuccessHandler:^(id  _Nonnull responseObject) {
        
    } andFailureHandler:^(NSError * _Nonnull error, NSString * _Nullable message) {
        
    }];
}

@end
