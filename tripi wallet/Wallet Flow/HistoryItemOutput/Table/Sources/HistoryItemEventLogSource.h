//
//  HistoryItemEventLogSource.h
//  tripi wallet
//
//  Created by Heaving Line on 06.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryEventLogsConvertableDataCell.h"

@protocol HistoryItemEventLogSourceDelegate <NSObject>

- (void)didChoseChangeValue:(NSString*) value;
- (void)valueDidChange;
- (void)convertValue:(NSString*) value frame:(CGRect)position withHandler:(ConversionResultHendler) handler;

@end

@interface HistoryItemEventLogSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id <HistoryItemEventLogSourceDelegate> delegate;
@property (strong, nonatomic) NSArray<RecieptLogDTO*>* logs;
@property (weak, nonatomic) UITableView *tableView;

@end
