//
//  QStoreSearchTableSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 28.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QStoreContractElement;

@protocol QStoreSearchTableSourceDelegate <NSObject>

- (void)didSelectSearchCellWithElement:(QStoreContractElement *) element;

- (void)loadMoreElements;

@end

@interface QStoreSearchTableSource : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) id <QStoreSearchTableSourceDelegate> delegate;

- (void)setSearchElements:(NSArray<QStoreContractElement *> *) elements;

@end
