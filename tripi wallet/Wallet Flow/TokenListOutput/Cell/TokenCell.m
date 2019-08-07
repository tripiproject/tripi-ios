//
//  TokenCell.m
//  tripi wallet
//
//  Created by Heaving Line on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenCell.h"

@interface TokenCell ()


@end

@implementation TokenCell

- (void)setupWithObject:(Contract *) token {

	self.tokenName.text = token.localName;
	self.mainSymbol.text = token.symbol;
	self.symbol.text = token.symbol;
	self.mainValue.text = [token balanceString];
	self.token = token;
}

- (void)changeHighlight:(BOOL) value {
}

- (void)layoutSubviews {

	[super layoutSubviews];

    if (self.type != Unsupported) {
        
        CGSize size = [self.token.balanceString sizeWithAttributes:@{NSFontAttributeName: self.mainValue.font}];
        if (size.width > self.mainValue.bounds.size.width) {
            self.mainValue.text = [self.token shortBalanceString];
        } else {
            self.mainValue.text = [self.token balanceString];
        }
    }
}

- (void)prepareForReuse {
    
    [super prepareForReuse];
	self.token = nil;
}

@end
