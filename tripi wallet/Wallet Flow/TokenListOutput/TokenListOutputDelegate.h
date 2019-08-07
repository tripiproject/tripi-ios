//
//  TokenListOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 07.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TokenListOutputDelegate <NSObject>

@required
- (void)didSelectTokenIndexPath:(NSIndexPath *) indexPath withItem:(Contract *) item;
- (void)didSelectUnsupportedTokenTokenIndexPath:(NSIndexPath *) indexPath withItem:(Contract *) item;

@end
