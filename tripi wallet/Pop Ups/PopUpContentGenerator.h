//
//  PopUpContentGenerator.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 03.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PopUpContent;

@interface PopUpContentGenerator : NSObject

+ (PopUpContent *)contentForOupsPopUp;

+ (PopUpContent *)contentForUpdateBalance;

+ (PopUpContent *)contentForPhotoLibrary;

+ (PopUpContent *)contentForCreateContract;

+ (PopUpContent *)contentForSend;

+ (PopUpContent *)contentForCompletedBackupFile;

+ (PopUpContent *)contentForBrainCodeCopied;

+ (PopUpContent *)contentForAddressCopied;

+ (PopUpContent *)contentForSourceCode;

+ (PopUpContent *)contentForAbiCopied;

+ (PopUpContent *)contentForRequestTokenPopUp;

+ (PopUpContent *)contentForInvalidQRCodeFormatPopUp;

+ (PopUpContent *)contentForTokenAdded;

+ (PopUpContent *)contentForContractAdded;

+ (PopUpContent *)contentForContractBought;

+ (PopUpContent *)contentForQStoreAbi;

+ (PopUpContent *)contentForRestoredContracts;

+ (PopUpContent *)contentForConfirmChangesInSend;

+ (PopUpContent *)contentForCopied;

@end
