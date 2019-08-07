//
//  HistoryEventLogsConvertableDataCell.h
//  tripi wallet
//
//  Created by Heaving Line on 07.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventLogHeader.h"
#import "ValueRepresentationEntity.h"

typedef void(^ConversionResultHendler)(NSString* resultValue, ConvertionAddressType type );

@protocol HistoryEventLogsConvertableDataCellDelegate <NSObject>

- (void)convertValue:(NSString*) value frame:(CGRect)position withHandler:(ConversionResultHendler) handler;
- (void)tableViewCellChanged;

@end

static NSString *historyEventLogsConvertableDataCellIdentifier = @"historyEventLogsConvertableDataCellIdentifier";

@interface HistoryEventLogsConvertableDataCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueTextLabel;
@property (weak, nonatomic) IBOutlet UIView *buttonContainer;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) id <HistoryEventLogsConvertableDataCellDelegate> delegate;

@property (assign, nonatomic) BOOL isLast;
@property (assign, nonatomic) BOOL isFirst;
@property (assign, nonatomic) BOOL isMiddle;

@property (strong, nonatomic) ValueRepresentationEntity *valuesModel;

@end
