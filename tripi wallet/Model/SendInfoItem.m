//
//  SendInfoItem.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 18.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

NSString *const TripiAddressKey = @"tripi";
NSString *const AmountKey = @"amount";
NSString *const LabelKey = @"label";
NSString *const MessageKey = @"message";
NSString *const TokenAddressKey = @"tokenAddress";

@interface SendInfoItem ()

@property (nonatomic) NSString *tripiAddress;
@property (nonatomic) NSString *tokenAddress;
@property (nonatomic) NSString *amountString;
@property (nonatomic) NSString *label;
@property (nonatomic) NSString *message;
@property (nonatomic) NSString *fromTripiAddress;

@end

@implementation SendInfoItem

- (instancetype)initWithString:(NSString *) string {
	self = [super init];
	if (self) {
		[self emptySetup];
		[self parseFullString:string];
	}
	return self;
}

- (instancetype)initWithTripiAddress:(NSString *) tripiAddress tokenAddress:(NSString *) tokenAddress amountString:(NSString *) amountString {
	self = [super init];
	if (self) {
		[self emptySetup];
		_tripiAddress = tripiAddress;
		_tokenAddress = tokenAddress;
		_amountString = amountString;
		_type = _tokenAddress ? SendInfoItemTypeToken : SendInfoItemTypeTripi;
	}
	return self;
}

- (instancetype)initWithTripiAddress:(NSString *) tripiAddress
					   tokenAddress:(NSString *) tokenAddress
					   amountString:(NSString *) amountString
					fromTripiAddress:(NSString *) fromAddress {

	self = [self initWithTripiAddress:tripiAddress tokenAddress:tokenAddress amountString:amountString];
	if (self) {
		_fromTripiAddress = fromAddress;
	}
	return self;
}

- (instancetype)initWithTripiAddressKey:(BTCKey *) tripiAddressKey
						  tokenAddress:(NSString *) tokenAddress
						  amountString:(NSString *) amountString
					fromTripiAddressKey:(BTCKey *) fromAddressKey {
	self = [super init];
	if (self) {
		[self emptySetup];
		_tripiAddressKey = tripiAddressKey;
		_tokenAddress = tokenAddress;
		_amountString = amountString;
		_fromTripiAddressKey = fromAddressKey;
		_type = _tokenAddress ? SendInfoItemTypeToken : SendInfoItemTypeTripi;
	}
	return self;
}

- (instancetype)init {
	self = [super init];
	if (self) {
		[self emptySetup];
	}
	return self;
}

- (void)emptySetup {
	_label = NSLocalizedString(@"TRIPI Mobile Wallet", nil);
	_message = NSLocalizedString(@"Payment Request", nil);
}

- (void)parseFullString:(NSString *) string {

	if (!string) {
		_type = SendInfoItemTypeInvalid;
		return;
	}

	NSArray *array = [string componentsSeparatedByString:@"?"];

	if (![self parseFirstPart:[array firstObject]]) {
		_type = SendInfoItemTypeInvalid;
		return;
	}

	if (array.count == 1) {
		return;
	}

	if (![self parseSecondPart:[array lastObject]]) {
		_type = SendInfoItemTypeInvalid;
		return;
	}
}

- (BOOL)parseFirstPart:(NSString *) string {

	NSArray *array = [string componentsSeparatedByString:@":"];

    if (array.count == 1) {
        _tripiAddress = [array firstObject];
        return YES;
    } else if (array.count != 2) {
		return NO;
	}

	if ([[array firstObject] isEqualToString:TripiAddressKey]) {
		_tripiAddress = [array lastObject];
	} else {
		return NO;
	}

	return YES;
}

- (BOOL)parseSecondPart:(NSString *) string {

	NSArray *array = [string componentsSeparatedByString:@"&"];

	for (NSString *param in array) {

		NSArray *paramArray = [param componentsSeparatedByString:@"="];
		if (paramArray.count != 2) {
			return NO;
		}
        
		if ([[paramArray firstObject] isEqualToString:AmountKey]) {
			_amountString = [paramArray lastObject];
		}
		if ([[paramArray firstObject] isEqualToString:LabelKey]) {
			_label = [paramArray lastObject];
		}
		if ([[paramArray firstObject] isEqualToString:MessageKey]) {
			_message = [paramArray lastObject];
		}
		if ([[paramArray firstObject] isEqualToString:TokenAddressKey]) {
			_tokenAddress = [paramArray lastObject];
			_type = SendInfoItemTypeToken;
		}
	}

	return YES;
}

- (NSString *)stringByItem {

	NSMutableString *string = [NSMutableString new];

	if (self.tripiAddress) {
		[string appendString:[NSString stringWithFormat:@"%@:%@?", TripiAddressKey, self.tripiAddress]];
	} else {
		return nil;
	}

	if (self.amountString && self.amountString.length > 0) {
		[string appendString:[NSString stringWithFormat:@"%@=%@&", AmountKey, self.amountString]];
	}

	if (self.label) {
		[string appendString:[NSString stringWithFormat:@"%@=%@&", LabelKey, self.label]];
	}

	if (self.message) {
		[string appendString:[NSString stringWithFormat:@"%@=%@&", MessageKey, self.message]];
	}

	if (self.tokenAddress) {
		[string appendString:[NSString stringWithFormat:@"%@=%@&", TokenAddressKey, self.tokenAddress]];
	}

	[string replaceCharactersInRange:NSMakeRange (string.length - 1, 1) withString:@""];

	return string;
}

@end
