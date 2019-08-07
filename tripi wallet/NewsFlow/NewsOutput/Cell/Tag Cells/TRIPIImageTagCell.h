//
//  TRIPIImageTagCell.h
//  tripi wallet
//
//  Created by Heaving Line on 20.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DynamicHeightCellProtocol.h"

extern NSString *const TRIPIImageTagCellReuseIdentifire;

@interface TRIPIImageTagCell : UITableViewCell <DynamicHeightCellProtocol>

@property (weak, nonatomic) IBOutlet UIImageView *tagImageView;

- (CGSize)prefferedSize;

@end
