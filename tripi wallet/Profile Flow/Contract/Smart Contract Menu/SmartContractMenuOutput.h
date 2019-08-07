//
//  SmartContractMenuOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartContractMenuOutputDelegate.h"

@protocol SmartContractMenuOutput <NSObject>

@property (weak, nonatomic) id <SmartContractMenuOutputDelegate> delegate;

@end
