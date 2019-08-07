//
//  SmartContractListItemCell.h
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRIPISwipableCellWithButtons.h"

static NSString *smartContractListItemCellIdentifire = @"SmartContractListItemCellIdentifire";

@protocol SmartContractListItemCellDelegate <NSObject>

- (void)renameForIndexPath:(NSIndexPath *) indexPath;

@end

@interface SmartContractListItemCell : TRIPISwipableCellWithButtons

@property (weak, nonatomic) id <SmartContractListItemCellDelegate> smartContractDelegate;
@property (weak, nonatomic) IBOutlet UILabel *contractName;
@property (weak, nonatomic) IBOutlet UILabel *typeIdentifire;
@property (weak, nonatomic) IBOutlet UILabel *creationDate;

@end
