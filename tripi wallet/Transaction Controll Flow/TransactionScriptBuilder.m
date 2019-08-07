//
//  TransactionScriptBuilder.m
//  tripi wallet
//
//  Created by Heaving Line on 06.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

@implementation TransactionScriptBuilder

- (NSUInteger)gasPrice {
	return 40;
}

- (BTCScript *)createContractScriptWithBiteCode:(NSData *) bitcode
									andGasLimit:(TRIPIBigNumber *) aGasLimit
									andGasPrice:(TRIPIBigNumber *) aGasPrice {

	BTCScript *script = [[BTCScript alloc] init];

	uint32_t ver = 4;
	[script appendData:[NSData dataWithBytes:&ver length:4]];

	NSUInteger gasLimit = aGasLimit ? [aGasLimit integerValue] : 2000000;
	[script appendData:[NSData dataWithBytes:&gasLimit length:8]];

	NSUInteger gasPrice = aGasPrice ? [aGasPrice integerValue] : [self gasPrice];
	[script appendData:[NSData dataWithBytes:&gasPrice length:8]];

	[script appendData:bitcode];

	[script appendOpcode:0xc1];

	return script;
}

- (BTCScript *)sendContractScriptWithBiteCode:(NSData *) bitcode
						   andContractAddress:(NSData *) address
								  andGasLimit:(TRIPIBigNumber *) aGasLimit
								  andGasPrice:(TRIPIBigNumber *) aGasPrice {

	BTCScript *script = [[BTCScript alloc] init];

	uint32_t ver = 4;
	[script appendData:[NSData dataWithBytes:&ver length:4]];

	NSUInteger gasLimit = aGasLimit ? [aGasLimit integerValue] : 2000000;
	[script appendData:[NSData dataWithBytes:&gasLimit length:8]];

	NSUInteger gasPrice = aGasPrice ? [aGasPrice integerValue] : [self gasPrice];
	[script appendData:[NSData dataWithBytes:&gasPrice length:8]];

	[script appendData:bitcode];

	[script appendData:address];

	[script appendOpcode:0xc2];

	return script;
}

@end
