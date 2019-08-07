//
//  TokenDetailDisplayDataManagerDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 24.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TokenDetailDisplayDataManagerDelegate <NSObject>

@optional
- (void)updateWithYOffset:(CGFloat) offset;

- (void)needShowHeader;

- (void)needHideHeader;

- (void)needShowHeaderForSecondSeciton;

- (void)needHideHeaderForSecondSeciton;

- (void)didPressedInfoActionWithToken:(Contract *) token;

- (void)didPressTokenAddressControlWithToken:(Contract *) token;

- (void)didPressHistoryItemForToken:( id <HistoryElementProtocol>) item;

- (void)refreshTableViewDataFromStart;
- (void)refreshTableViewDataWithPage:(NSInteger) page;


@end
