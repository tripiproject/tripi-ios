//
//  SubscribeTokenDataDisplayManagerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SubscribeTokenDataDisplayManagerLight.h"


@implementation SubscribeTokenDataDisplayManagerLight

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {

}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {

}


#pragma mark - Lazy Getter

- (UIView *)highlightedView {

	UIView *selectedBackgroundView = [[UIView alloc] init];
	[selectedBackgroundView setBackgroundColor:lightBlueColor ()];
	return selectedBackgroundView;
}


@end
