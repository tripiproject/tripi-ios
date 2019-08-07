//
//  PaymentValuesManager.m
//  tripi wallet
//
//  Created by Vladimir Sharaev on 04.10.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

NSString *const PaymentValuesManagerFeeKey = @"PaymentValuesManagerFeeKey";
NSString *const PaymentValuesManagerGasPriceKey = @"PaymentValuesManagerGasPriceKey";
NSString *const PaymentValuesManagerGaslimitKey = @"PaymentValuesManagerGaslimitKey";

long const MaxFee = 1;

long const StandartGasLimitForCreateContract = 2000000;
long const StandartGasLimit = 200000;
long const MinGasLimit = 100000;
long const MinGasPrice = 40;

long const GasPriceStep = 5;
long const GasPriceStepsCount = 16;
long const GasLimitStep = 100000;
long const GasLimitStepsCount = 49;

@interface PaymentValuesManager ()

@property (nonatomic) TRIPIBigNumber *gasPrice;
@property (nonatomic) TRIPIBigNumber *gasLimit;
@property (nonatomic) TRIPIBigNumber *fee;

@end

@implementation PaymentValuesManager

- (instancetype)init {

	self = [super init];
	if (self != nil) {
		_minGasLimit = [TRIPIBigNumber decimalWithInteger:MinGasLimit];
		_minGasPrice = [TRIPIBigNumber decimalWithInteger:MinGasPrice];
		_maxFee = [TRIPIBigNumber decimalWithInteger:MaxFee];
		_standartGasLimit = [TRIPIBigNumber decimalWithInteger:StandartGasLimit];
		_standartGasLimitForCreateContract = [TRIPIBigNumber decimalWithInteger:StandartGasLimitForCreateContract];
		[self calculateMaxValues];

		[self loadLastValues];
		[self loadDGPInfo];
	}
	return self;
}

- (void)saveLastValues {
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:self.fee forKey:PaymentValuesManagerFeeKey];
	[userDefaults setObject:self.gasPrice forKey:PaymentValuesManagerGasPriceKey];
	[userDefaults setObject:self.gasLimit forKey:PaymentValuesManagerGaslimitKey];
	[userDefaults synchronize];
}

- (void)loadLastValues {

	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	TRIPIBigNumber *fee = [userDefaults objectForKey:PaymentValuesManagerFeeKey];
	TRIPIBigNumber *gasPrice = [userDefaults objectForKey:PaymentValuesManagerGasPriceKey];
	TRIPIBigNumber *gasLimit = [userDefaults objectForKey:PaymentValuesManagerGaslimitKey];

	if (fee)
		_fee = fee;
	if (gasPrice)
		_gasPrice = gasPrice;
	if (gasLimit)
		_gasLimit = gasLimit;
}

- (void)calculateMaxValues {

	_maxGasPrice = [TRIPIBigNumber decimalWithInteger:[self.minGasPrice integerValue] + GasPriceStep * GasPriceStepsCount];
	_maxGasLimit = [TRIPIBigNumber decimalWithInteger:[self.minGasLimit integerValue] + GasLimitStep * GasLimitStepsCount];
}

- (void)loadDGPInfo {
	__weak typeof (self) weakSelf = self;
	[SLocator.requestManager getDGPinfo:^(id responseObject) {
		NSDictionary *dictionary = (NSDictionary *)responseObject;

		NSNumber *mingasprice = [dictionary objectForKey:@"mingasprice"];
		weakSelf.minGasPrice = [TRIPIBigNumber decimalWithString:mingasprice.stringValue];

		[weakSelf calculateMaxValues];
	}                 andFailureHandler:^(NSError *error, NSString *message) {
		DLog(@"Cannot get DGP info");
	}];
}

@end
