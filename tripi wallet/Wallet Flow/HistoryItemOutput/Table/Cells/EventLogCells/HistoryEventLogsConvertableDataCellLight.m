//
//  HistoryEventLogsConvertableDataCellLight.m
//  tripi wallet
//
//  Created by Heaving Line on 07.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "HistoryEventLogsConvertableDataCellLight.h"

@implementation HistoryEventLogsConvertableDataCellLight

-(void)configViews {
    
    self.buttonContainer.layer.borderWidth = 1;
    self.buttonContainer.layer.borderColor = lightGreenColor().CGColor;
    self.buttonContainer.layer.cornerRadius = 4;
    self.buttonContainer.layer.masksToBounds = YES;
}

@end
