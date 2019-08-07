//
//  NSData+AES.h
//  tripi wallet
//
//  Created by Heaving Line on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256)

- (NSData *)AES256EncryptWithKey:(NSString *) key;

- (NSData *)AES256DecryptWithKey:(NSString *) key;

@end
