//
//  WalletBalanceEntity+Extension.m
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "WalletBalanceEntity+Extension.h"

@implementation WalletBalanceEntity (Extension)

-(TRIPIBigNumber*)balance {
    
    TRIPIBigNumber* balance = [TRIPIBigNumber decimalWithString:self.balanceString];
    return balance ?: [TRIPIBigNumber decimalWithString:@"0"];
}

-(TRIPIBigNumber*)unconfirmedBalance {
    
    TRIPIBigNumber* balance = [TRIPIBigNumber decimalWithString:self.unconfirmedBalanceString];
    return balance ?: [TRIPIBigNumber decimalWithString:@"0"];
}

-(NSString*)fullDateString {
    
    CGFloat dateNumber = self.dateInterval;
    
    if (!dateNumber) {
        return nil;
    }
    
    NSTimeInterval dateTimeInterval = dateNumber;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateTimeInterval];
    
    NSDateFormatter *fullDateFormater = [[NSDateFormatter alloc] init];
    fullDateFormater.dateFormat = @"MMMM d, hh:mm:ss aa";
    fullDateFormater.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    
    return [NSString stringWithFormat:@"%@", [fullDateFormater stringFromDate:date]];
}

@end
