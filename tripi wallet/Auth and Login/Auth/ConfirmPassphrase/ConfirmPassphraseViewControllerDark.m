//
//  ConfirmPassphraseViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ConfirmPassphraseViewControllerDark.h"

@interface ConfirmPassphraseViewControllerDark ()

@end

@implementation ConfirmPassphraseViewControllerDark

-(void)configCellsFromNibs {
    
    [self.choosenCollectionView registerNib:[UINib nibWithNibName:@"ConfirmWordCollectionViewCellDark" bundle:nil] forCellWithReuseIdentifier:confirmWordCollectionViewCellIdentifire];
    [self.exampleCollectionView registerNib:[UINib nibWithNibName:@"ExampleWordCollectionViewCellDark" bundle:nil] forCellWithReuseIdentifier:exampleWordCollectionViewCellIdentifire];
    
    self.sizingCellForChoose = [[UINib nibWithNibName:@"ConfirmWordCollectionViewCellDark" bundle:nil] instantiateWithOwner:nil options:nil].firstObject;
    self.sizingCellForExample = [[UINib nibWithNibName:@"ExampleWordCollectionViewCellDark" bundle:nil] instantiateWithOwner:nil options:nil].firstObject;
}

@end
