//
//  SendCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 04.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SendCoordinatorDelegate <NSObject>

@end

@interface SendCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <SendCoordinatorDelegate> delegate;

- (void)setForSendSendInfoItem:(SendInfoItem *) item;

- (void)setForToken:(Contract *) aToken withAddress:(NSString *) address andAmount:(NSString *) amount;

- (void)didSelectedFromTabbar;


@end
