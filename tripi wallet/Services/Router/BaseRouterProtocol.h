//
//  BaseRouterProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 28.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Presentable.h"

@protocol BaseRouterProtocol <NSObject>

- (void)pushOutput:(NSObject <Presentable> *)output animated:(BOOL)animated;
- (void)pushOutput:(NSObject <Presentable> *)output;

- (void)presenteOutput:(NSObject <Presentable> *)output animated:(BOOL)animated;
- (void)presenteOutput:(NSObject <Presentable> *)output;

- (void)popOutputAnimated:(BOOL)animated;
- (void)popOutput;

- (void)setRootOutput:(NSObject <Presentable> *)output;

- (void)popToRoot;
- (void)popToRootAnimated:(BOOL)animated;


@end
