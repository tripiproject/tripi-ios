//
//  SocketManager.h
//  tripi wallet
//
//  Created by Heaving Line on 24.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contract;

extern NSString *const kSocketDidConnect;
extern NSString *const kSocketDidDisconnect;
extern NSString *const kSocketConnectionFailed;

typedef NS_ENUM(NSInteger, ConnectionStatus) {
	NotConnected,
	Connected,
	Connecting,
	Reconnecting,
	Disconnected,
    ConnectionFailed
};

@interface SocketManager : NSObject

@property (assign, nonatomic, readonly) ConnectionStatus status;
@property (nonatomic, weak) id <Requestable> delegate;


- (void)subscripeToUpdateWalletAdresses:(NSArray *) addresses;

- (void)stoptWithHandler:(void (^)(void)) handler;

- (void)startObservingToken:(Contract *) token withHandler:(void (^)(void)) handler;

- (void)stopObservingToken:(Contract *) token withHandler:(void (^)(void)) handler;

- (void)startObservingContractPurchase:(NSString *) requestId withHandler:(void (^)(void)) handler;

- (void)stopObservingContractPurchase:(NSString *) requestId withHandler:(void (^)(void)) handler;


@end
