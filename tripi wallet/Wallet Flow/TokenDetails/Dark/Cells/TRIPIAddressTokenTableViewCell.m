//
//  TRIPIAddressTokenTableViewCell.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TRIPIAddressTokenTableViewCell.h"

@interface TRIPIAddressTokenTableViewCell ()


@end

@implementation TRIPIAddressTokenTableViewCell

- (void)awakeFromNib {
	[super awakeFromNib];
}

- (void)setSelected:(BOOL) selected animated:(BOOL) animated {
	[super setSelected:selected animated:animated];

}

- (void)actionPlus:(id) sender {
	[self.delegate actionPlus:sender];
}

@end
