//
//  TRIPISwipableCellWithButtons.h
//  tripi wallet
//
//  Created by Heaving Line on 01.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TRIPISwipableCellWithButtonsDelegate <NSObject>
@optional
- (BOOL)shoudCloseCell:(UITableViewCell *) cell;

- (BOOL)shoudOpenCell:(UITableViewCell *) cell;

- (void)buttonOneActionForIndexPath:(NSIndexPath *) indexPath;

- (void)buttonTwoActionForIndexPath:(NSIndexPath *) indexPath;

- (void)cellDidOpen:(UITableViewCell *) cell;

- (void)cellDidClose:(UITableViewCell *) cell;

- (void)cellWillOpen:(UITableViewCell *) cell;

- (void)cellWillClose:(UITableViewCell *) cell;

- (void)cellDidStartMoving:(UITableViewCell *) cell;

- (void)cellEndMoving:(UITableViewCell *) cell;

@end

@interface TRIPISwipableCellWithButtons : UITableViewCell

@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, weak) id <TRIPISwipableCellWithButtonsDelegate> delegate;

- (void)openCell;

- (void)closeCell;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *contentViewRightConstraint;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *contentViewLeftConstraint;
@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) IBOutlet UIView *myContentView;
@property (nonatomic, weak) IBOutlet UILabel *myTextLabel;

@end
