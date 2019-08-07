//
//  WalletHeaderCellDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletHeaderCellDark.h"

CGFloat const WalletHeaderCellDarkHeaderHeight = 50.0f;

@interface WalletHeaderCellDark ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableTextTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *uncorfirmedTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *uncorfirmedTextTopConstraint;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableCenterConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *availableTextCenterConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *unconfirmedCenterConsctraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *unconfirmedTextCenterConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *noInternetUnconfirmedBalanceTopOffset;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *noInternetBalanceTopOffset;

@end

@implementation WalletHeaderCellDark

- (void)setData:(id <Spendable>) wallet {

	[super setData:wallet];

	self.valueLabel.text = [NSString stringWithFormat:@"%@ %@", self.valueLabel.text, NSLocalizedString(@"TRIPI", nil)];
	self.unconfirmedValue.text = [NSString stringWithFormat:@"%@ %@", self.unconfirmedValue.text, NSLocalizedString(@"TRIPI", nil)];
}

#pragma mark - Animation

- (void)cellYPositionChanged:(CGFloat) yPosition {
	CGFloat maxYPosition = self.separatorView.frame.origin.y - WalletHeaderCellDarkHeaderHeight;

	// formats
	// minTop, maxTop, minFont, maxFont
	// top, center
	NSArray *value1;
	NSArray *value2;
	if (self.type == HeaderCellTypeAllVisible || self.type == HeaderCellTypeWithoutPageControl) {
		value1 = @[@(20), @(maxYPosition + 8.0f), @(14), @(28), @(1.0f), @(1.0f)];
		value2 = @[@(56), @(maxYPosition + 10), @(11), @(12), @(1.0f), @(1.0f)];
	} else {
		value1 = @[@(20), @(maxYPosition + 15.0f), @(14), @(28), @(1.0f), @(1.0f)];
		value2 = @[@(56), @(maxYPosition + 17.0f), @(11), @(12), @(1.0f), @(1.0f)];
	}
	NSArray *constraints1 = @[self.availableTopConstraint, self.availableCenterConstraint];
	NSArray *constraints2 = @[self.availableTextTopConstraint, self.availableTextCenterConstraint];
	NSArray *value3 = @[@(86), @(maxYPosition + 25.0f), @(14), @(16), @(1.0f), @(0.6f)];
	NSArray *constraints3 = @[self.uncorfirmedTopConstraint, self.unconfirmedCenterConsctraint];
	NSArray *value4 = @[@(107), @(maxYPosition + 28.0f), @(11), @(12), @(1.0f), @(0.6f)];
	NSArray *constraints4 = @[self.uncorfirmedTextTopConstraint, self.unconfirmedTextCenterConstraint];

	CGFloat percentOfPosition = yPosition / -maxYPosition;
	[self changePositionForLabel:self.valueLabel andPercent:percentOfPosition values:value1 constraints:constraints1 isLeft:NO];
	[self changePositionForLabel:self.availableTitleLabel andPercent:percentOfPosition values:value2 constraints:constraints2 isLeft:YES];
	[self changePositionForLabel:self.unconfirmedValue andPercent:percentOfPosition values:value3 constraints:constraints3 isLeft:NO];
	[self changePositionForLabel:self.notConfirmedTitleLabel andPercent:percentOfPosition values:value4 constraints:constraints4 isLeft:YES];

	[self changeAlphaByPercent:percentOfPosition];
}

- (void)setCellType:(HeaderCellType) type {
    
    switch (type) {
            
        case HeaderCellTypeAllVisible:
            self.noInternetUnconfirmedBalanceTopOffset.active = YES;
            self.noInternetBalanceTopOffset.active = NO;
            break;
        case HeaderCellTypeWithoutPageControl:
            self.noInternetUnconfirmedBalanceTopOffset.active = YES;
            self.noInternetBalanceTopOffset.active = NO;
            break;
        case HeaderCellTypeWithoutNotCorfirmedBalance:
            self.noInternetUnconfirmedBalanceTopOffset.active = YES;
            self.noInternetBalanceTopOffset.active = NO;
            break;
        case HeaderCellTypeWithoutAll:
            self.noInternetUnconfirmedBalanceTopOffset.active = NO;
            self.noInternetBalanceTopOffset.active = YES;
            break;
        case HeaderCellTypeWithoutAllWithLastTime:
            self.noInternetUnconfirmedBalanceTopOffset.active = NO;
            self.noInternetBalanceTopOffset.active = YES;
            break;
        case HeaderCellTypeAllVisibleWithLastTime:
            self.noInternetUnconfirmedBalanceTopOffset.active = YES;
            self.noInternetBalanceTopOffset.active = NO;
            break;
        case HeaderCellTypeWithoutNotCorfirmedBalanceWithLastTime:
            self.noInternetUnconfirmedBalanceTopOffset.active = NO;
            self.noInternetBalanceTopOffset.active = YES;
            break;
        case HeaderCellTypeWithoutPageControlWithLastTime:
            self.noInternetUnconfirmedBalanceTopOffset.active = YES;
            self.noInternetBalanceTopOffset.active = NO;
            break;
    }
    [super setCellType:type];
}

- (void)changeAlphaByPercent:(CGFloat) percent {
    
	CGFloat minAlphaForPage = 0.0f;
	CGFloat maxAlphaForPage = 1.0f;
    
    CGFloat minAlphaForLabels = -1.0f;
    CGFloat maxAlphaForLabels = 1.0f;

    self.lastBalanceUpdateLabel.alpha = maxAlphaForLabels - (maxAlphaForLabels - minAlphaForLabels) * percent;
    self.noInternetConnectionLabel.alpha = maxAlphaForLabels - (maxAlphaForLabels - minAlphaForLabels) * percent;
	self.pageControl.alpha = maxAlphaForPage - (maxAlphaForPage - minAlphaForPage) * percent;
}

- (BOOL)needShowHeader:(CGFloat) yPosition {
	CGFloat maxYPosition = self.separatorView.frame.origin.y - WalletHeaderCellDarkHeaderHeight;
	CGFloat percentOfPosition = yPosition / -maxYPosition;

	return percentOfPosition >= 1;
}

- (CGFloat)getHeaderHeight {
	return WalletHeaderCellDarkHeaderHeight;
}

- (CGFloat)calculateOffsetAfterScroll:(CGFloat) position {

	CGFloat maxYPosition = self.frame.size.height - WalletHeaderCellDarkHeaderHeight;
	CGFloat percentOfPosition = position / maxYPosition;
	if (percentOfPosition == 0.0f || percentOfPosition >= 1.0f) {
		return 0.0f;
	}
	NSLog (@"%f %f %f", position, percentOfPosition, (percentOfPosition > 0.5f) ? -(maxYPosition - position) : position);
	return (percentOfPosition > 0.5f) ? -(maxYPosition - position) : position;
}

@end
