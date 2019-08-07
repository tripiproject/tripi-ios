//
//  SeitchParameterView.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 09.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchParameterViewDelegate <NSObject>

- (void)switchValueChanged:(BOOL) value;

@end

@interface SwitchParameterView : UIView

@property (weak, nonatomic) id <SwitchParameterViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)changeSwitchValue:(BOOL) value;

@end
