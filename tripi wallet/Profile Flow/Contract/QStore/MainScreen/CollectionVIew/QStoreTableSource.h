//
//  QStoreTableSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 27.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QStoreMainScreenCategory;
@class QStoreContractElement;

@protocol QStoreTableSourceDelegate <NSObject>

- (void)didSelectCollectionCellWithElement:(QStoreContractElement *) element;

@end

@interface QStoreTableSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <QStoreTableSourceDelegate> delegate;
@property (nonatomic, weak) UITableView *tableView;

- (void)setCategoriesArray:(NSArray<QStoreMainScreenCategory *> *) categories;

@end
