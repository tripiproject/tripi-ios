//
//  ChooseConverterViewLight.m
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ChooseConverterViewLight.h"

@implementation ChooseConverterViewLight

-(void)configView {
    
    self.dropListView.layer.cornerRadius = 5;
    self.dropListView.layer.masksToBounds = YES;
    self.dropListView.layer.borderWidth = 1;
    self.dropListView.layer.borderColor = lightGreenColor().CGColor;
}


@end
