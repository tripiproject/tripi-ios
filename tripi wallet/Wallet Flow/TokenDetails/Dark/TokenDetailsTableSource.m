//
//  TokenDetailsTableSource.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenDetailsTableSource.h"
#import "TRIPIAddressTokenTableViewCell.h"

#import "BalanceTokenView.h"
#import "TRIPIAddressTokenView.h"
#import "NubersTokenView.h"
#import "AddressesTokenView.h"
#import "MainTokenTableViewCell.h"
#import "ActivityTokenTableViewCell.h"

static NSInteger const NumberOfSections = 2;
static NSInteger const NumberOfRowsForFirstSection = 1;

static CGFloat const ActivityHeaderHeight = 34;
static CGFloat const BalanceTokenHeight = 84;
static CGFloat const TRIPIAddressTokenHeight = 47;
static CGFloat const NubersTokenHeight = 51;
static CGFloat const AddressesTokenHeight = 51;
static CGFloat const ActivityTokenHeight = 75;

static NSString *const ActivityHeaderIdentifier = @"ActivityHeaderTokenTableViewCell";
static NSString *const BalanceTokenIdentifier = @"BalanceTokenTableViewCell";
static NSString *const TRIPIAddressTokenIdentifier = @"TRIPIAddressTokenTableViewCell";
static NSString *const NubersTokenIdentifier = @"NubersTokenTableViewCell";
static NSString *const AddressesTokenIdentifier = @"AddressesTokenTableViewCell";
static NSString *const MainTokenIdentifier = @"MainTokenTableViewCell";

@interface TokenDetailsTableSource () <TRIPIAddressTokenTableViewCellDelegate, TRIPIAddressTokenViewDelegate>

@property (nonatomic, weak) MainTokenTableViewCell *mainCell;
@property (nonatomic, weak) UIView *headerForSecondSection;
@property (nonatomic, assign) CGFloat lastContentOffset;

@end

@implementation TokenDetailsTableSource

@synthesize token, delegate;

- (NSInteger)realNumberOfSections {
    return NumberOfSections;
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    
	if (indexPath.section == 0) {
		return [self getCellForFirstSection:tableView forRow:indexPath.row];
	} else {
        return [super tableView:tableView cellForRowAtIndexPath:indexPath];
	}
}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger) section {
    
	if (section == 0) {
		return NumberOfRowsForFirstSection;
	} else {
		return [self countOfHistoryElement];
	}
}

- (CGFloat)tableView:(UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
    
	if (indexPath.section == 0) {
		CGFloat height = 0.0f;

		height += BalanceTokenHeight;
		height += TRIPIAddressTokenHeight;
		height += NubersTokenHeight;
		height += AddressesTokenHeight;

		return height;
	} else {
		return ActivityTokenHeight;
	}
}

- (CGFloat)tableView:(UITableView *) tableView heightForHeaderInSection:(NSInteger) section {
	if (section == 1) {
		return ActivityHeaderHeight;
	}
	return 0;
}

- (UIView *)tableView:(UITableView *) tableView viewForHeaderInSection:(NSInteger) section {
	if (section == 1) {
		UITableViewCell *headerCell = [tableView dequeueReusableCellWithIdentifier:ActivityHeaderIdentifier];
		self.headerForSecondSection = headerCell;
		return headerCell;
	}
	return nil;
}


- (void)scrollViewDidScroll:(UIScrollView *) scrollView {

	CGFloat scrollDiff = self.lastContentOffset - scrollView.contentOffset.y;
	CGFloat position = self.mainCell.frame.origin.y - scrollView.contentOffset.y;

	[self.mainCell changeTopConstaintsByPosition:position diff:scrollDiff];

	if (self.headerForSecondSection) {
		CGFloat headerHeight = [MainTokenTableViewCell getHeaderHeight];
		CGFloat headerPosition = self.headerForSecondSection.frame.origin.y - scrollView.contentOffset.y;
		if (headerPosition <= headerHeight || [self.mainCell needShowHeader:position diff:scrollDiff]) {
			[self.delegate needShowHeaderForSecondSeciton];
		} else {
			[self.delegate needHideHeaderForSecondSeciton];
		}
	}

	if ([self.mainCell needShowHeader:position diff:scrollDiff]) {
		if ([self.delegate respondsToSelector:@selector (needShowHeader)]) {
			[self.delegate needShowHeader];
		}
	} else {
		if ([self.delegate respondsToSelector:@selector (needHideHeader)]) {
			[self.delegate needHideHeader];
		}
	}

	self.lastContentOffset = scrollView.contentOffset.y;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *) scrollView {

	if (!self.mainCell)
		return;
	CGFloat diff = [self.mainCell lastRect:scrollView.contentOffset.y];
	[scrollView setContentOffset:CGPointMake (scrollView.contentOffset.x, scrollView.contentOffset.y - diff) animated:YES];
}

- (void)scrollViewDidEndDragging:(UIScrollView *) scrollView willDecelerate:(BOOL) decelerate {

	if (decelerate) {
		return;
	}

	if (!self.mainCell)
		return;
	CGFloat diff = [self.mainCell lastRect:scrollView.contentOffset.y];
	[scrollView setContentOffset:CGPointMake (scrollView.contentOffset.x, scrollView.contentOffset.y - diff) animated:YES];
}

#pragma mark - Private methods

- (UITableViewCell *)getCellForFirstSection:(UITableView *) tableView forRow:(NSInteger) row {

	MainTokenTableViewCell *cell = (MainTokenTableViewCell *)[tableView dequeueReusableCellWithIdentifier:MainTokenIdentifier];
	if (!cell) {
		cell = [[MainTokenTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MainTokenIdentifier];
		cell.contentView.backgroundColor = customBlueColor ();
		cell.selectionStyle = UITableViewCellSelectionStyleNone;
	}

	UIView *view;
	view = [cell addViewOrReturnContainViewForUpdate:[self createOrUpdateBalanceTokenView:nil] withHeight:BalanceTokenHeight];
	if (!view)
		[self createOrUpdateBalanceTokenView:(BalanceTokenView *)view];

	view = [cell addViewOrReturnContainViewForUpdate:[self createOrUpdateTRIPIAddressTokenView:nil] withHeight:TRIPIAddressTokenHeight];
	if (!view)
		[self createOrUpdateTRIPIAddressTokenView:(TRIPIAddressTokenView *)view];

	view = [cell addViewOrReturnContainViewForUpdate:[self createOrUpdateNubersTokenView:nil] withHeight:NubersTokenHeight];
	if (!view)
		[self createOrUpdateNubersTokenView:(NubersTokenView *)view];

	view = [cell addViewOrReturnContainViewForUpdate:[self createOrUpdateAddressesTokenView:nil] withHeight:AddressesTokenHeight];
	if (!view)
		[self createOrUpdateAddressesTokenView:(AddressesTokenView *)view];

	self.mainCell = cell;

	return cell;
}

#pragma mark - Configuration Views

- (BalanceTokenView *)createOrUpdateBalanceTokenView:(BalanceTokenView *) view {

	BalanceTokenView *updatedView = view;
	if (!updatedView) {
		updatedView = (BalanceTokenView *)[self getViewFromXib:[BalanceTokenView class]];
	}

	NSString *balanceWithSymbol = [NSString stringWithFormat:@"%@ %@", self.token.balanceString, self.token.symbol];
	NSString *shortBalanceWithSymbol = [NSString stringWithFormat:@"%@ %@", self.token.shortBalanceString, self.token.symbol];

	updatedView.balanceValueLabel.text = balanceWithSymbol;
    updatedView.balanceTextLabel.text = NSLocalizedString(@"Available Balance", @"");
	updatedView.shortBalance = shortBalanceWithSymbol;
	updatedView.longBalance = balanceWithSymbol;
	return updatedView;
}

- (TRIPIAddressTokenView *)createOrUpdateTRIPIAddressTokenView:(TRIPIAddressTokenView *) view {

	TRIPIAddressTokenView *updatedView = view;
	if (!updatedView) {
		updatedView = (TRIPIAddressTokenView *)[self getViewFromXib:[TRIPIAddressTokenView class]];
	}
    updatedView.tokenAddressTextLabel.text = NSLocalizedString(@"Token Address", @"");
	updatedView.delegate = self;
	updatedView.addressLabel.text = SLocator.walletManager.wallet.mainAddress;
	return updatedView;
}

- (NubersTokenView *)createOrUpdateNubersTokenView:(NubersTokenView *) view {

	NubersTokenView *updatedView = view;
	if (!updatedView) {
		updatedView = (NubersTokenView *)[self getViewFromXib:[NubersTokenView class]];
	}
    updatedView.initialSupTextLabel.text = NSLocalizedString(@"Initial Supply:", @"");
    updatedView.decimalUnitsTextLabel.text = NSLocalizedString(@"Decimal Units:", @"");
	updatedView.initialSupplyLabel.text = self.token.totalSupplyString;
	updatedView.decimalUnitsLabel.text = [NSString stringWithFormat:@"%@", self.token.decimals];
	updatedView.shortTotalSupply = self.token.shortTotalSupplyString;
	return updatedView;
}

- (AddressesTokenView *)createOrUpdateAddressesTokenView:(AddressesTokenView *) view {

	AddressesTokenView *updatedView = view;
	if (!updatedView) {
		updatedView = (AddressesTokenView *)[self getViewFromXib:[AddressesTokenView class]];
	}
	updatedView.addressNameLabel.text = NSLocalizedString(@"Contract Address", @"");
	updatedView.addressLabel.text = self.token.contractAddress;
	return updatedView;
}

- (UIView *)getViewFromXib:(Class) class {

	NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"TokenDetailsViews" owner:self options:nil];

	for (UIView *view in views) {
		if ([view isKindOfClass:class]) {
			return view;
		}
	}

	return nil;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {
    
    if (indexPath.section != 1) {
        return;
    }
    
    ActivityTokenTableViewCell *cell = (ActivityTokenTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [cell changeHighlight:YES];
}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {
    
    if (indexPath.section != 1) {
        return;
    }
    
    ActivityTokenTableViewCell *cell = (ActivityTokenTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [cell changeHighlight:NO];
}

- (void)tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *) indexPath {
    
    if (indexPath.section == 1) {
        [self didPressedHistoryElementAtIndexPath:indexPath];
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - TRIPIAddressTokenTableViewCellDelegate

- (void)actionPlus:(id) sender {
	[self.delegate didPressedInfoActionWithToken:self.token];
}

- (void)actionTokenAddressControl {

	[self.delegate didPressTokenAddressControlWithToken:self.token];
}

@end
