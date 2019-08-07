//
//  NewsOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 21.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//
@class TRIPINewsItem;

@protocol NewsOutputDelegate <NSObject>

@required
- (void)refreshTableViewData;

- (void)didSelectCellWithNews:(TRIPINewsItem *) newsItem;

@end
