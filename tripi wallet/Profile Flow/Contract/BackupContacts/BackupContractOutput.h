//
//  BackupContractOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BackupContractOutputDelegate.h"
#import "Presentable.h"

@protocol BackupContractOutput <Presentable>

@property (weak, nonatomic) id <BackupContractOutputDelegate> delegate;

@end
