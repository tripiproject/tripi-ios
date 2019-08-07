//
//  ExportWalletCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 12.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ExportBrandKeyCoordinator;

@protocol ExportBrandKeyCoordinatorDelegate <NSObject>

- (void)coordinatorDidEnd:(ExportBrandKeyCoordinator *) coordinator;

@end

@interface ExportBrandKeyCoordinator : BaseCoordinator <Coordinatorable>

@property (weak, nonatomic) id <ExportBrandKeyCoordinatorDelegate> delegate;

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;

@end
