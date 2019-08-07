//
//  TRIPIAddressTokenView.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 29.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIAddressTokenView.h"

@implementation TRIPIAddressTokenView

- (IBAction)actionPlus:(id) sender {
	[self.delegate actionPlus:sender];
}

- (IBAction)actionTokenAddressControl:(id) sender {
	[self.delegate actionTokenAddressControl];
}

@end
