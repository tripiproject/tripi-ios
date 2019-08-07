//
//  ConfirmPassphraseViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfirmPassphraseOutput.h"
#import "ConfirmWordCollectionViewCell.h"
#import "ExampleWordCollectionViewCell.h"

@interface ConfirmPassphraseViewController : UIViewController <ConfirmPassphraseOutput>

@property (weak, nonatomic) IBOutlet UICollectionView *choosenCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *exampleCollectionView;

@property (strong, nonatomic) ConfirmWordCollectionViewCell *sizingCellForChoose;
@property (strong, nonatomic) ExampleWordCollectionViewCell *sizingCellForExample;

@end
