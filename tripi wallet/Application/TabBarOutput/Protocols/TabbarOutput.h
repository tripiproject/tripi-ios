//
//  TabbarOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TabbarOutputDelegate;

@protocol TabbarOutput <NSObject>

@property (weak, nonatomic) id <TabbarOutputDelegate> outputDelegate;
@property (assign, nonatomic) BOOL isReload;

- (void)selectSendController;

- (void)setControllerForSend:(UIViewController *) sendController
				   forWallet:(UIViewController *) walletController
				  forProfile:(UIViewController *) profileController;


@end
