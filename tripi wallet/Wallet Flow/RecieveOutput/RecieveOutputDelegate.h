//
//  RecieveOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@protocol RecieveOutputDelegate <NSObject>

- (void)didBackPressed;

@optional
- (void)didPressedChooseAddressWithPreviusAddress:(NSString *) prevAddress;

@end
