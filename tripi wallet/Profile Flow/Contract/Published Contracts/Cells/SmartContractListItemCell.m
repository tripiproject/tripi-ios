//
//  SmartContractListItemCell.m
//  tripi wallet
//
//  Created by Heaving Line on 30.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SmartContractListItemCell.h"

@interface SmartContractListItemCell()

@end

@implementation SmartContractListItemCell

- (IBAction)actionRename:(id)sender {
    
    [self.smartContractDelegate renameForIndexPath:self.indexPath];
}

@end
