//
//  HistoryItemViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 06.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryItemOutput.h"
#import "Presentable.h"

@interface HistoryItemViewController : BaseViewController <HistoryItemOutput, Presentable>

@property (weak, nonatomic) IBOutlet UITableView *owerviewTableView;
@property (weak, nonatomic) IBOutlet UITableView *eventLogTableView;

- (void)configWithItem;
- (void)configLocalization;

@end
