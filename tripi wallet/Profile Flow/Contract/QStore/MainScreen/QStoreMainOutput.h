//
//  QStoreMainOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "QStoreMainOutputDelegate.h"

@class QStoreMainScreenCategory;
@class QStoreContractElement;

@protocol QStoreMainOutput <NSObject>

@property (weak, nonatomic) id <QStoreMainOutputDelegate> delegate;

- (void)startLoading;

- (void)stopLoading;

- (void)setCategories:(NSArray<QStoreMainScreenCategory *> *) categories;

- (void)setTag:(NSString *) tag;

- (void)setSearchElements:(NSArray<QStoreContractElement *> *) elements;

- (void)setSearchMoreElements:(NSArray<QStoreContractElement *> *) elements;

@end
