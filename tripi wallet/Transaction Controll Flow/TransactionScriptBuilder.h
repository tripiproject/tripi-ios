//
//  TransactionScriptBuilder.h
//  tripi wallet
//
//  Created by Heaving Line on 06.09.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TransactionScriptBuilder : NSObject

- (BTCScript *)createContractScriptWithBiteCode:(NSData *) bitcode
									andGasLimit:(TRIPIBigNumber *) aGasLimit
									andGasPrice:(TRIPIBigNumber *) aGasPrice;

- (BTCScript *)sendContractScriptWithBiteCode:(NSData *) bitcode
						   andContractAddress:(NSData *) address
								  andGasLimit:(TRIPIBigNumber *) aGasLimit
								  andGasPrice:(TRIPIBigNumber *) aGasPrice;

@end
