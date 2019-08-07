//
//  QStoreContractOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.08.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@class QStoreContractElement;
@class QStoreBuyRequest;

@protocol QStoreContractOutputDelegate <NSObject>

- (void)didLoadViewWithFullContract:(QStoreContractElement *) element;

- (void)loadAbiWithElement:(QStoreContractElement *) element;

- (void)didSelectPurchaseContract:(QStoreContractElement *) element;

- (void)didSelectQStoreContractDetails:(QStoreBuyRequest *) request;

- (void)didSelectTag:(NSString *) tag;

- (void)didCopySourceOrAbi:(NSString *) text;

- (void)didPressedBack;

- (void)didPressedTemplateDetailWithAbi:(NSString *) abi;

@end
