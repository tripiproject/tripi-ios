//
//  ChooseReciveAddressOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 23.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChooseReciveAddressOutputDelegate.h"
#import "Presentable.h"

@protocol ChooseReciveAddressOutput <Presentable>

@property (weak, nonatomic) id <ChooseReciveAddressOutputDelegate> delegate;
@property (copy, nonatomic) NSArray <NSString *> *addresses;
@property (copy, nonatomic) NSString *prevAddress;

@end
