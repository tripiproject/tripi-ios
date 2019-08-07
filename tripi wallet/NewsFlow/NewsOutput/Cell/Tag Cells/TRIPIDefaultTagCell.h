//
//  TRIPIDefaultTagCell.h
//  tripi wallet
//
//  Created by Heaving Line on 20.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicHeightCellProtocol.h"

extern NSString *const TRIPIDefaultTagCellReuseIdentifire;

@interface TRIPIDefaultTagCell : UITableViewCell <DynamicHeightCellProtocol>

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
