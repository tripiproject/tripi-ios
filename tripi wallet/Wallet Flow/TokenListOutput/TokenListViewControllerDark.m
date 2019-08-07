//
//  TokenListViewControllerDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 07.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenListViewControllerDark.h"
#import "PageControl.h"
#import "TokenCellDark.h"

@interface TokenListViewControllerDark ()

@property (weak, nonatomic) IBOutlet PageControl *pageControl;

@end

@implementation TokenListViewControllerDark

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.pageControl setPagesCount:2];
	[self.pageControl setSelectedPage:1];
}

- (CGFloat)tableView:(UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
	return 46;
}

@end
