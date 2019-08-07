//
//  TokenDetailDataDisplayManagerImp.h
//  tripi wallet
//
//  Created by Heaving Line on 12.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TokenDetailDataDisplayManager.h"

@interface TokenDetailDataDisplayManagerImp : NSObject <TokenDetailDataDisplayManager>

- (id<HistoryElementProtocol>)elementForIndexPath:(NSIndexPath*) indexPath;
- (NSInteger)countOfHistoryElement;
- (void)didPressedHistoryElementAtIndexPath:(NSIndexPath*) indexPath;

@end
