//
//  QStoreCollectionViewSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 26.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QStoreContractElement.h"

@protocol QStoreCollectionViewSourceDelegate <NSObject>

- (void)didSelectCollectionCellWithElement:(QStoreContractElement *) element;

@end

@interface QStoreCollectionViewSource : NSObject <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) id <QStoreCollectionViewSourceDelegate> delegate;
@property (nonatomic) NSArray<QStoreContractElement *> *elements;

@end
