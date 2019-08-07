//
//  PublishedContractListOutputDelegates.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PublishedContractListOutputDelegate <NSObject>

- (void)didSelectContractWithIndexPath:(NSIndexPath *) indexPath withContract:(Contract *) contract;

- (void)didPressedBack;

- (void)didTrainingPass;

- (void)didChooseRenameContract:(Contract *) contract;

- (void)didUnsubscribeFromContract:(Contract *) contract;

- (void)didUnsubscribeFromContractPretendentWithTxHash:(NSString *) hexTransaction;

- (void)didUnsubscribeFromFailedContractPretendentWithTxHash:(NSString *) hexTransaction;


@end
