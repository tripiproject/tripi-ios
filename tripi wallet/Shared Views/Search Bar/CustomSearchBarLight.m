//
//  CustomSearchBarLight.m
//  tripi wallet
//
//  Created by Heaving Line on 18.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CustomSearchBarLight.h"

@implementation CustomSearchBarLight

- (void)setup {

	UITextField *searchTextField = [self valueForKey:@"_searchField"];
	if ([searchTextField respondsToSelector:@selector (setAttributedPlaceholder:)]) {
		UIColor *color = [UIColor colorWithRed:255 / 255. green:255 / 255. blue:255 / 255. alpha:0.5];
		[searchTextField setAttributedPlaceholder:[[NSAttributedString alloc] initWithString:NSLocalizedString(@"Search", @"Search placeholder") attributes:@{NSForegroundColorAttributeName: color}]];
	}

	[self setImage:[UIImage imageNamed:@"ic-search-clear-light"] forSearchBarIcon:UISearchBarIconClear state:UIControlStateNormal];
	[self setImage:[UIImage imageNamed:@"ic-search-clear-light"] forSearchBarIcon:UISearchBarIconClear state:UIControlStateSelected];
	[self setImage:[UIImage imageNamed:@"ic-search-light"] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
}

@end
