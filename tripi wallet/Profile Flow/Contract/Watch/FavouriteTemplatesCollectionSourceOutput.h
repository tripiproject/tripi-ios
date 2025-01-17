//
//  FavouriteTemplatesCollectionSourceOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "FavouriteTemplatesCollectionSourceOutputDelegate.h"

@protocol FavouriteTemplatesCollectionSourceOutput <NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic) TemplateModel *activeTemplate;
@property (nonatomic) NSArray<TemplateModel *> *templateModels;
@property (nonatomic, weak) id <FavouriteTemplatesCollectionSourceOutputDelegate> delegate;
@property (nonatomic, weak) UICollectionView *collectionView;

@end
