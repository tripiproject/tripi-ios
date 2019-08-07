//
//  InterfaceController.m
//  TRIPI Watch Extension
//
//  Created by Sharaev Vladimir on 06.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "QRCodeController.h"
#import "SessionManager.h"
#import "WatchWallet.h"

@interface QRCodeController ()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *imageView;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *reloadButton;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *statusLabel;

@property (nonatomic) WatchWallet *wallet;

@end


@implementation QRCodeController

- (void)awakeWithContext:(id) context {
	[super awakeWithContext:context];

	self.wallet = (WatchWallet *)context;

	UIImage *image = [UIImage imageWithData:self.wallet.imageData];
	[self.imageView setImage:image];
	[self.statusLabel setText:self.wallet.address];
}

- (void)getText:(NSString *) text {
	[self.statusLabel setText:text];
}

@end



