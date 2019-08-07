//
//  NSObject+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 26.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (NSString *)nameOfClass;

- (BOOL)isNull;

- (void)setAssociatedObject:(id) associatedObjec;

- (id)associatedObject;

- (UIViewController *)toPresent;

@end
