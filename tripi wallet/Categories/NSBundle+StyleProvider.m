//
//  NSObject+StyleProvider.h
//  tripi wallet
//
//  Created by Heaving Line on 21.05.17.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "NSBundle+StyleProvider.h"

@implementation NSBundle (StyleProvider)

- (NSString *)tca_localizedStringForKey:(NSString *) key class:(Class) tableClass {

	NSString *string = [self localizedStringForKey:key value:nil table:NSStringFromClass (tableClass)];
	if ([string isEqualToString:key] == YES && [tableClass superclass] != nil) {
		string = [self tca_localizedStringForKey:key class:[tableClass superclass]];
	}
	return string;
}

@end
