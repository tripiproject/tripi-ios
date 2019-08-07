//
//  ChoseTokenPaymentCell.h
//  tripi wallet
//
//  Created by Heaving Line on 25.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *choseTokenPaymentCellIdentifire = @"ChoseTokenPaymentCellIdentifire";

@interface ChoseTokenPaymentCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *tokenName;
@property (weak, nonatomic) IBOutlet UILabel *mainBalance;
@property (weak, nonatomic) IBOutlet UILabel *mainBalanceSymbol;
@property (weak, nonatomic) IBOutlet UILabel *balance;
@property (weak, nonatomic) IBOutlet UILabel *balanceSymbol;
@property (strong, nonatomic) NSString *shortBalance;
@property (strong, nonatomic) NSString *longBalance;


@end
