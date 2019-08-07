//
//  QStoreListTableSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 28.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QStoreListTableSourceDelegate <NSObject>

- (void)didSelectCell:(NSIndexPath *) indexPath;

- (void)loadMoreElements;

@end

@interface QStoreListTableSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <QStoreListTableSourceDelegate> delegate;
@property (nonatomic) NSArray *array;

- (UIImage *)getImgeByCategoryType:(NSString *) type isLight:(BOOL) isLight;

@end
