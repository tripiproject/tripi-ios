//
//  WatchContractOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WatchContractOutputDelegate <NSObject>

- (void)didSelectChooseFromLibrary:(id) sender;

- (void)didChangeAbiText;

- (void)didPressedBack;

@end
