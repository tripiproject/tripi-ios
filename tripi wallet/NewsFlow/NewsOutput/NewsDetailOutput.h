//
//  NewsDetailOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 20.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@class TRIPINewsItem;
@class NewsDetailCellBuilder;

@protocol NewsDetailOutputDelegate <NSObject>

- (void)refreshTagsWithNewsItem:(TRIPINewsItem *) newsItem;

- (void)didBackPressed;

@end

@protocol NewsDetailOutput <Presentable>

@property (weak, nonatomic) id <NewsDetailOutputDelegate> delegate;
@property (strong, nonatomic) TRIPINewsItem *newsItem;
@property (strong, nonatomic) NewsDetailCellBuilder *cellBuilder;

- (void)reloadTableView;

- (void)failedToGetData;

- (void)startLoading;

- (void)stopLoadingIfNeeded;

@end
