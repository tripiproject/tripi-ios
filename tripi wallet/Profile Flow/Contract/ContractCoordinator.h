//
//  ContractCoordinator.h
//  tripi wallet
//
//  Created by Heaving Line on 03.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCoordinator.h"
#import "ResultTokenInputsModel.h"

@class TemplateModel;
@class AbiinterfaceItem;

@protocol ContractCoordinatorDelegate <NSObject>

@required
- (void)createStepOneCancelDidPressed;

- (void)didPressedBack;

- (void)didSelectChooseFromLibrary:(id) sender;

- (void)didChangeAbiText;


@end

@interface ContractCoordinator : BaseCoordinator <Coordinatorable, ContractCoordinatorDelegate>

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;

@end
