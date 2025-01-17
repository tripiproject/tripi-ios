//
//  HistoryTableViewCellDark.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "HistoryTableViewCellDark.h"

@implementation HistoryTableViewCellDark

- (void)awakeFromNib {
	[super awakeFromNib];

	UIView *bgColorView = [[UIView alloc] init];
	bgColorView.backgroundColor = customRedColor ();
	[self setSelectedBackgroundView:bgColorView];
}

- (void)setHistoryElement:(HistoryElement *) historyElement {
	[super setHistoryElement:historyElement];

    if (historyElement.contracted && historyElement.confirmed){
        self.typeImage.image = [UIImage imageNamed:@"ic-sent_smartContract"];
        self.typeLabel.text = NSLocalizedString(@"Sent\ncontract", nil);
    } else if (historyElement.internal) {
        self.typeImage.image = [UIImage imageNamed:@"ic-sent_to_myself"];
        self.typeLabel.text = NSLocalizedString(@"Internal\ntransaction", nil);
    }  else if (historyElement.send) {
        self.typeImage.image = [UIImage imageNamed:@"history_send"];
        self.typeLabel.text = NSLocalizedString(@"Sent", nil);
    } else {
        self.typeImage.image = [UIImage imageNamed:@"history_receive"];
        self.typeLabel.text = NSLocalizedString(@"Received", nil);
    }

	self.typeImage.tintColor = customBlueColor ();
}

- (void)changeHighlight:(BOOL) value {
	self.typeImage.tintColor =
			self.typeLabel.textColor =
					self.amountLabel.textColor =
							self.dateLabel.textColor =
									self.addressLabel.textColor = value ? customBlackColor () : customBlueColor ();

	self.addressLabel.alpha =
			self.dateLabel.alpha = value ? 1.0f : 0.4f;
}

@end
