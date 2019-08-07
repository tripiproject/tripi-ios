//
//  ConfirmBorderedViewLight.m
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ConfirmBorderedViewLight.h"

@implementation ConfirmBorderedViewLight

- (void)configBorder {
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    self.backgroundColor = lightBorderLabelBackroundColor();
    self.layer.borderColor = [lightBlackColor78 () colorWithAlphaComponent:0.2f].CGColor;
    self.layer.borderWidth = 1;
    self.layer.cornerRadius = 2;
    self.layer.masksToBounds = YES;
}

- (void)setFailedState:(BOOL) isFailed {
    
    if (isFailed) {
        self.layer.borderColor = customRedColor().CGColor;
    } else {
        self.layer.borderColor = [lightBlackColor78 () colorWithAlphaComponent:0.2f].CGColor;
    }
}


@end
