//
//  PopupFactoryProtocol.h
//  tripi wallet
//
//  Created by Heaving Line on 23.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NoInternetConnectionPopUpViewController;
@class PhotoLibraryPopUpViewController;
@class ErrorPopUpViewController;
@class InformationPopUpViewController;
@class ConfirmPopUpViewController;
@class LoaderPopUpViewController;
@class RestoreContractsPopUpViewController;
@class SecurityPopupViewController;
@class ConfirmPurchasePopUpViewController;
@class ShareTokenPopUpViewController;
@class AddressTransferPopupViewController;

@protocol PopupFactoryProtocol <NSObject>

- (NoInternetConnectionPopUpViewController *)createNoInternetConnectionPopUpViewController;

- (PhotoLibraryPopUpViewController *)createPhotoLibraryPopUpViewController;

- (ErrorPopUpViewController *)createErrorPopUpViewController;

- (InformationPopUpViewController *)createInformationPopUpViewController;

- (ConfirmPopUpViewController *)createConfirmPopUpViewController;

- (LoaderPopUpViewController *)createLoaderViewController;

- (RestoreContractsPopUpViewController *)createRestoreContractsPopUpViewController;

- (SecurityPopupViewController *)createSecurityPopupViewController;

- (SourceCodePopUpViewController *)createSourceCodePopUpViewController;

- (ConfirmPurchasePopUpViewController *)createConfirmPurchasePopUpViewController;

- (ShareTokenPopUpViewController *)createShareTokenPopUpViewController;

- (AddressTransferPopupViewController *)createAddressTransferPopupViewController;


@end
