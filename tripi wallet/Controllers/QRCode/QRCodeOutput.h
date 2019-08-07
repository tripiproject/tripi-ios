//
//  QRCodeOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 28.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@class SendInfoItem;

@protocol QRCodeOutputDelegate <Presentable>

- (void)didQRCodeScannedWithSendInfoItem:(SendInfoItem *) item;
- (void)didBackPressed;

@end

@protocol QRCodeOutput <Presentable>

@property (nonatomic, weak) id <QRCodeOutputDelegate> delegate;

@end
