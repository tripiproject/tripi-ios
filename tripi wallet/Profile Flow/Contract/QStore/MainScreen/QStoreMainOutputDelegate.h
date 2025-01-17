//
//  QStoreMainOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@class QStoreContractElement;

@protocol QStoreMainOutputDelegate <NSObject>

- (void)didSelectQStoreCategories;

- (void)didSelectQStoreContractElement:(QStoreContractElement *) element;

- (void)didLoadCategories;

- (void)didChangedSearchText:(NSString *) text orSelectedSearchIndex:(NSInteger) index;

- (void)didLoadMoreElementsForText:(NSString *) text orSelectedSearchIndex:(NSInteger) index;

- (void)didPressedBack;

@end
