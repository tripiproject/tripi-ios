//
//  AppSettings.h
//  tripi wallet
//
//  Created by Heaving Line on 24.03.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppSettings : NSObject <Clearable>

@property (assign, nonatomic, readonly) BOOL isMainNet;
@property (assign, nonatomic, readonly) BOOL isRPC;
@property (assign, nonatomic, readonly) BOOL isFingerprintEnabled;
@property (assign, nonatomic, readonly) BOOL isFingerprintAllowed;
@property (assign, nonatomic, readonly) BOOL isLongPin;
@property (assign, nonatomic, readonly) BOOL isDarkTheme;
@property (assign, nonatomic, readonly) NSInteger failedPinWaitingTime;
@property (assign, nonatomic, readonly) BOOL isRemovingContractTrainingPassed;
@property (copy, nonatomic, readonly) NSString *baseURL;


- (void)setup;

- (void)setFingerprintEnabled:(BOOL) enabled;

- (void)changeThemeToDark:(BOOL) needDarkTheme;

- (void)changeIsRemovingContractTrainingPassed:(BOOL) passed;

@end
