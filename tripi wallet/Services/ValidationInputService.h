//
//  ValidationInputService.h
//  tripi wallet
//
//  Created by Heaving Line on 22.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ValidationRegexProvider;

@interface ValidationInputService : NSObject

- (instancetype)initWithRegexProvider:(ValidationRegexProvider*) regexProvider;

- (BOOL)isValidSymbols:(NSString*)string forParameter:(id <AbiParameterProtocol>) parameter;
- (BOOL)isValidString:(NSString*)string forParameter:(id <AbiParameterProtocol>) parameter;

- (BOOL)isValidAddressSymbolsInString:(NSString*)string;
- (BOOL)isValidAddressString:(NSString*)string;

- (BOOL)isValidAmountString:(NSString*)string;
- (BOOL)isValidContractAmountString:(NSString*)string;

- (BOOL)isValidContractAddressString:(NSString*)string;
- (BOOL)isValidSymbolsContractAddressString:(NSString*)string;

@end
