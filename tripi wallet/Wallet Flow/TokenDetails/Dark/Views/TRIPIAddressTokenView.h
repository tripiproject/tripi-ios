//
//  TRIPIAddressTokenView.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 29.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TRIPIAddressTokenViewDelegate <NSObject>

@required
- (void)actionPlus:(id) sender;

- (void)actionTokenAddressControl;

@end

@interface TRIPIAddressTokenView : UIView

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) id <TRIPIAddressTokenViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *tokenAddressTextLabel;

@end
