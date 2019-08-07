//
//  ChangePinOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@protocol ChangePinOutputDelegate

@required
- (void)confirmPin:(NSString *) pin andCompletision:(void (^)(BOOL success)) completisiom;

- (void)didPressedBack;

- (void)didPressedCancel;

@optional
- (void)confilmPinFailed;

- (void)setAnimationState:(BOOL) isAnimating;

@end
