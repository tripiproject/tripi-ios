//
//  NSDate+Extension.h
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

@property (strong, nonatomic, readonly) NSString *string;

- (NSString *)formatedDateString;

+ (NSString *)formatedDateStringFromString:(NSString *) dateString;

+ (NSInteger)minutsSinceDate:(NSDate *) date;

- (NSDate *)dateInLocalTimezoneFromUTCDate;


@end
