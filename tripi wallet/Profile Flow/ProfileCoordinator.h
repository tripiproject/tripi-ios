//
//  ProfileCoordinator.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 07.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BaseCoordinator.h"

@class LanguageCoordinator;

@interface ProfileCoordinator : BaseCoordinator <Coordinatorable>

- (instancetype)initWithNavigationController:(UINavigationController *) navigationController;

- (void)startFromLanguage;

@end
