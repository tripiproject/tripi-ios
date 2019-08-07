//
//  ProfileViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 28.12.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileOutput.h"
#import "Presentable.h"

@class ProfileTableViewCell;

@interface ProfileViewController : BaseViewController <ProfileOutput, UITableViewDelegate, UITableViewDataSource, Presentable>

@property (nonatomic, weak) id <ProfileOutputDelegate> delegate;

- (UIView *)getFooterView;

- (UIView *)getHighlightedView;

- (void)configurateCell:(ProfileTableViewCell *) cell atIndexPath:(NSIndexPath *) indexPath;

@end
