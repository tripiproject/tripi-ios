//
//  FavouriteTemplatesCollectionSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FavouriteTemplatesCollectionSourceOutput.h"

@interface FavouriteTemplatesCollectionSource : NSObject <FavouriteTemplatesCollectionSourceOutput>

@property (nonatomic) TemplateModel *activeTemplate;
@property (nonatomic) NSArray<TemplateModel *> *templateModels;
@property (nonatomic, weak) id <FavouriteTemplatesCollectionSourceOutputDelegate> delegate;
@property (nonatomic, weak) UICollectionView *collectionView;

@end
