//
//  PublishedContractListOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PublishedContractListOutputDelegate.h"
#import "Presentable.h"

@protocol PublishedContractListOutput <Presentable>

@property (copy, nonatomic) NSArray <Contract *> *contracts;
@property (strong, nonatomic) NSDictionary *smartContractPretendents;
@property (strong, nonatomic) NSDictionary *failedContractPretendents;
@property (weak, nonatomic) id <PublishedContractListOutputDelegate> delegate;

- (void)setNeedShowingTrainingScreen;
- (void)reloadData;

@end
