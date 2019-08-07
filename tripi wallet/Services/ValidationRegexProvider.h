//
//  ValidationRegexService.h
//  tripi wallet
//
//  Created by Heaving Line on 22.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ValidationRegexProvider : NSObject

//full validation
- (NSRegularExpression*)addressParameterValidationRegex;
- (NSRegularExpression*)uintParameterValidationRegexWithSize:(NSInteger) size;
- (NSRegularExpression*)intParameterValidationRegexWithSize:(NSInteger) size;
- (NSRegularExpression*)boolParameterValidationRegex;
- (NSRegularExpression*)arrayParameterValidationRegex;
- (NSRegularExpression*)bytesParameterValidationRegex;
- (NSRegularExpression*)unnownParameterValidationRegex;
- (NSRegularExpression*)fixedBytesParameterValidationRegex;

//symbols validation
- (NSRegularExpression*)addressParameterSymbolsValidationRegex;
- (NSRegularExpression*)uintParameterSymbolsValidationRegexWithSize:(NSInteger) size;
- (NSRegularExpression*)intParameterSymbolsValidationRegexWithSize:(NSInteger) size;
- (NSRegularExpression*)boolParameterSymbolsValidationRegex;
- (NSRegularExpression*)arrayParameterSymbolsValidationRegex;
- (NSRegularExpression*)bytesParameterSymbolsValidationRegex;
- (NSRegularExpression*)unnownParameterSymbolsValidationRegex;
- (NSRegularExpression*)fixedBytesParameterSymbolsValidationRegex;

- (NSRegularExpression*)amountSymbolValidationRegex;
- (NSRegularExpression*)contractAmountSymbolValidationRegex;
- (NSRegularExpression*)contractAddressValidationRegex;
- (NSRegularExpression*)contractAddressSymbolsValidationRegex;


@end
