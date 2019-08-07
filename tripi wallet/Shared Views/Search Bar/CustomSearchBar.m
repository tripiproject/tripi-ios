//
//  CustomSearchBar.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 27.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CustomSearchBar.h"

@interface CustomSearchBar ()

@end

@implementation CustomSearchBar

- (instancetype)initWithCoder:(NSCoder *) aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		[self setup];
	}
	return self;
}

- (void)setShowsCancelButton:(BOOL) showsCancelButton animated:(BOOL) animated {
	[super setShowsCancelButton:showsCancelButton animated:animated];
	self.cancelButtonShowed = showsCancelButton;
}

- (void)setup {

}

@end
