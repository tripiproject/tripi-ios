//
//  TokenHistoryElement.m
//  tripi wallet
//
//  Created by Heaving Line on 21.12.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TokenHistoryElement.h"

@implementation TokenHistoryElement

@synthesize
address = _address,
amount = _amount,
amountString = _amountString,
transactionHash = _transactionHash,
dateNumber = _dateNumber,
shortDateString = _shortDateString,
fullDateString = _fullDateString,
send = _send,
confirmed = _confirmed,
isSmartContractCreater = _isSmartContractCreater,
fromAddresses = _fromAddresses,
toAddresses = _toAddresses,
currency = _currency,
hasReceipt = _hasReceipt,
blockHash = blockHash,
internal = _internal,
blockNumber = _blockNumber,
contracted = _contracted,
decimals = _decimals;


- (BOOL)isEqualElementWithoutConfimation:(id <HistoryElementProtocol>) object {
    
    if (self.address && object.address && ![self.address isEqualToString:object.address]) {
        return NO;
    }
    
    if (self.amount && object.amount && ![self.amount isEqualToDecimalNumber:object.amount]) {
        return NO;
    }
    
    if (self.amountString && object.amountString && ![self.amountString isEqualToString:object.amountString]) {
        return NO;
    }
    
    if (self.dateNumber && object.dateNumber && ![self.dateNumber isEqualToNumber:object.dateNumber]) {
        return NO;
    }

    if (self.transactionHash && object.transactionHash && ![self.transactionHash isEqualToString:object.transactionHash]) {
        return NO;
    }
    return YES;
}

- (void)setupWithObject:(id) object {
    
    if ([object isKindOfClass:[NSDictionary class]]) {
        
        NSMutableArray* fromAddresses = self.fromAddresses.mutableCopy;
        NSMutableArray* toAddresses = self.toAddresses.mutableCopy;
        
        TRIPIBigNumber* decimalsNumber = self.decimals.length > 0 ? [TRIPIBigNumber decimalWithString:self.decimals] : [TRIPIBigNumber decimalWithString:@"0"];
        TRIPIBigNumber* amountNumber = object[@"amount"] ? [TRIPIBigNumber decimalWithString:object[@"amount"]] : [TRIPIBigNumber decimalWithString:@"0"];
        TRIPIBigNumber* amountWithDecimal = [amountNumber numberWithPowerOfMinus10:decimalsNumber];
        NSString* amountString = amountWithDecimal.stringValue;
        [fromAddresses addObject:@{@"address": object[@"from"],
                                       @"value": amountString}];
        [toAddresses addObject:@{@"address": object[@"to"],
                                       @"value": amountString}];
        self.amount = amountWithDecimal;
        self.address = object[@"contract_address"] ? object[@"contract_address"] : @"";
        self.amountString = amountString;
        self.transactionHash = ![object[@"tx_hash"] isKindOfClass:[NSNull class]] ? object[@"tx_hash"] : nil;
        self.dateNumber = ![object[@"tx_time"] isKindOfClass:[NSNull class]] ? object[@"tx_time"] : nil;
        NSDictionary* addresses = [SLocator.walletManager.wallet addressKeyHashTable];

        self.send = addresses[object[@"from"] ?: @""] ? YES : NO;
        self.internal = addresses[object[@"from"] ?: @""] && addresses[object[@"to"] ?: @""];
        self.confirmed = YES;
        self.contracted = YES;
        self.fromAddresses = [fromAddresses copy];
        self.toAddresses = [toAddresses copy];
    }
}

- (NSArray *)fromAddresses {
    if (!_fromAddresses) {
        _fromAddresses = @[];
    }
    return _fromAddresses;
}

- (NSArray *)toAddresses {
    if (!_toAddresses) {
        _toAddresses = @[];
    }
    return _toAddresses;
}

- (void)setDateNumber:(NSNumber *) dateNumber {
    _dateNumber = dateNumber;
    [self createDateString];
}

- (void)createDateString {
    
    CGFloat dateNumber = [self.dateNumber doubleValue];
    if (!dateNumber) {
        return;
    }
    
    NSTimeInterval dateTimeInterval = dateNumber;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateTimeInterval];
    
    NSDateFormatter *fullDateFormater = [[NSDateFormatter alloc] init];
    fullDateFormater.dateFormat = @"MMMM d, hh:mm:ss aa";
    fullDateFormater.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    
    self.fullDateString = [NSString stringWithFormat:@"%@", [fullDateFormater stringFromDate:date]];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"MMM dd";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    
    self.shortDateString = [NSString stringWithFormat:@"%@", [dateFormatter stringFromDate:date]];
}

- (NSString *)shortDateString {
    
    CGFloat dateNumber = [self.dateNumber doubleValue];
    if (!dateNumber) {
        return @"";
    }
    
    NSTimeInterval dateTimeInterval = dateNumber;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateTimeInterval];
    NSTimeInterval nowTimeInterval = [[NSDate new] timeIntervalSince1970];
    
    NSTimeInterval difference = nowTimeInterval - dateTimeInterval;
    NSTimeInterval day = 24 * 60 * 60;
    NSTimeInterval currenDayTimeInterval = (long)nowTimeInterval % (long)day;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    if (difference < currenDayTimeInterval) {
        dateFormatter.dateFormat = @"h:mm a";
        dateFormatter.AMSymbol = @"a.m.";
        dateFormatter.PMSymbol = @"p.m.";
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        
    } else {
        dateFormatter.dateFormat = @"MMM dd";
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    }
    
    return [NSString stringWithFormat:@"%@", [dateFormatter stringFromDate:date]];
}

- (NSString *)formattedDateStringSinceCome {
    
    CGFloat dateNumber = [self.dateNumber doubleValue];
    if (!dateNumber) {
        return @"";
    }
    
    NSTimeInterval dateTimeInterval = dateNumber;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateTimeInterval];
    NSDate *now = [NSDate date];
    
    NSDateComponentsFormatter *formatter = [[NSDateComponentsFormatter alloc] init];
    formatter.unitsStyle = NSDateComponentsFormatterUnitsStyleFull;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    calendar.locale = [NSLocale localeWithLocaleIdentifier:[LanguageManager currentLanguageCode]];
    
    NSDateComponents *components = [calendar components:(NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond)
                                               fromDate:date
                                                 toDate:now
                                                options:0];
    
    NSString *formatString;
    
    if (components.day >= 2) {
        
        return self.shortDateString;
        
    } else if (components.day == 1) {
        
        formatString = NSLocalizedString(@"Yesterday", @"day at history cell");
        return formatString;
        
    } else if (components.hour >= 1 && components.hour < 24) {
        
        return self.shortDateString;
        
    } else if (components.minute >= 1 && components.minute < 60) {
        
        NSString *minutsString = NSLocalizedString(@"minuts ago", @"time ago");
        NSString *minutString = NSLocalizedString(@"minut ago", @"time ago");
        
        return [NSString stringWithFormat:@"%li %@", (long)components.minute, components.minute > 1 ? minutsString : minutString];
        
    } else if (components.second > 0 && components.second < 60) {
        
        formatString = NSLocalizedString(@"few seconds ago", @"few seconds ago");
        return formatString;
    } else {
        return self.shortDateString;
    }
}

- (NSDictionary *)dictionaryFromElementForWatch {
    return @{};
}



@end
