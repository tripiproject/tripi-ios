//
//  ProfileOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 07.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProfileOutputDelegate <NSObject>

@required
- (void)didChangeFingerprintSettings:(BOOL) value;

- (void)didPressedLanguage;

- (void)didPressedChangePin;

- (void)didPressedWalletBackup;

- (void)didPressedAbout;

- (void)didPressedCreateToken;

- (void)didPressedSubscribeToken;

- (void)didPressedLogout;

- (void)didPressedThemes;

@end
