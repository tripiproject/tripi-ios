//
//  ChooseReciveAddressOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 23.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChooseReciveAddressOutputDelegate <NSObject>

- (void)didChooseAddress:(NSString *) address;

- (void)didBackPressed;

@end
