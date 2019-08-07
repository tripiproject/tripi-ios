//
//  NSObject+Associating.h
//  tripi wallet
//
//  Created by Heaving Line on 21.05.17.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Associating)

- (BOOL)isNull;

@property (nonatomic, retain) id associatedObject;

@end
