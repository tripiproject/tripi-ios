//
//  ExampleWordCollectionViewCellDark.m
//  tripi wallet
//
//  Created by Heaving Line on 04.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ExampleWordCollectionViewCellDark.h"

@implementation ExampleWordCollectionViewCellDark

- (void)configTextLabel {
    
    self.backView.layer.masksToBounds = YES;
    self.backView.clipsToBounds = YES;
}

@end
