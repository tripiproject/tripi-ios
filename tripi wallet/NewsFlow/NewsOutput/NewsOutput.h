//
//  NewsOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 21.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "NewsOutputDelegate.h"
#import "Presentable.h"
#import "TRIPINewsItem.h"

@protocol NewsOutput <NSObject, Presentable>

@property (weak, nonatomic) id <NewsOutputDelegate> delegate;
@property (strong, nonatomic) NSArray<TRIPINewsItem *> *news;

- (void)reloadTableView;

- (void)startLoading;

- (void)stopLoadingIfNeeded;

@end
