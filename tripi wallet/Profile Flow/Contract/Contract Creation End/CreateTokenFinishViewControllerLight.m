//
//  CreateTokenFinishViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 01.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "CreateTokenFinishViewControllerLight.h"

@interface CreateTokenFinishViewControllerLight ()

@end

@implementation CreateTokenFinishViewControllerLight

#pragma mark - UITableViewDelegate

- (void)configBottomGradientView {
	self.bottomGradientView.colorType = WhiteLong;
}

- (CGFloat)tableView:(UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
	return 44;
}

@end
