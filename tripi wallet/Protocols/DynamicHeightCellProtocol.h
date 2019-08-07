//
//  DynamicHeightCellProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 26.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DynamicHeightCellProtocol <NSObject>

@optional
- (CGFloat)calculateSelfHeight;

@end
