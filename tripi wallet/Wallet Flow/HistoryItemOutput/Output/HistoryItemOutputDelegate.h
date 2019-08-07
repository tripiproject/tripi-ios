//
//  HistoryItemOutputDelegate.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 11.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@protocol HistoryItemOutputDelegate <NSObject>

- (void)didBackPressed;
- (void)didPressedCopyWithValue:(NSString*) value;


@end
