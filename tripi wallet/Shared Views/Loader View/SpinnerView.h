//
//  SpinnerView.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 08.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpinnerView : UIView

- (void)startAnimating;

- (void)stopAnimating;

- (BOOL)isAnimating;

@end
