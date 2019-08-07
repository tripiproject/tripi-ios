//
//  TokenAddressLibraryOutputDelegate.h
//  tripi wallet
//
//  Created by Heaving Line on 03.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TokenAddressLibraryOutputDelegate <NSObject>

- (void)didBackPress;

- (void)didPressCellAtIndexPath:(NSIndexPath *) indexPath withAddress:(NSString *) address;

@end
