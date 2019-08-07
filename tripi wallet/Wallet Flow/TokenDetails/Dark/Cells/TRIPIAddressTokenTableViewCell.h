//
//  TRIPIAddressTokenTableViewCell.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TRIPIAddressTokenTableViewCellDelegate <NSObject>

@required
- (void)actionPlus:(id) sender;

- (void)actionTokenAddressControl;

@end

@interface TRIPIAddressTokenTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) id <TRIPIAddressTokenTableViewCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *tokenAddressTextLabel;

@end
