//
//  AddressLibruaryCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 02.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AddressLibruaryCoordinator;

@protocol AddressLibruaryCoordinatorDelegate <NSObject>

- (void)coordinatorLibraryDidEnd:(AddressLibruaryCoordinator *) coordinator;

- (void)coordinatorLibraryDidEnd:(AddressLibruaryCoordinator *) coordinator withQrCodeItem:(SendInfoItem *) item;

@end

@interface AddressLibruaryCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <AddressLibruaryCoordinatorDelegate> delegate;

- (instancetype)initWithNavigationViewController:(UINavigationController *) navigationController;

@end
