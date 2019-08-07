;//
//  ContractManager.h
//  tripi wallet
//
//  Created by Heaving Line on 12.04.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clearable.h"
#import "Managerable.h"
#import "TemplateModel.h"

@class HistoryElement;
@class Contract;

extern NSString *const kTokenDidChange;
extern NSString *const kContractCreationFailed;
extern NSString *const kSmartContractPretendentsKey;
extern NSString *const kTemplateModel;
extern NSString *const kAddresses;
extern NSString *const kLocalContractName;

@interface ContractManager : NSObject <Managerable, Clearable>

- (NSArray <Contract *> *)allContracts;

- (NSArray <Contract *> *)allTokens;

- (NSArray <Contract *> *)allActiveTokens;

- (NSArray <Contract *> *)allActiveAndSupportedTokens;

- (NSDictionary *)smartContractPretendentsCopy;

- (NSDictionary *)failedContractPretendentsCopy;

- (void)addNewContract:(Contract *) token;

- (void)changeContractName:(Contract *) contract withNewName:(NSString*) newName;

- (void)updateTokenWithContractAddress:(NSString *) address withAddressBalanceDictionary:(NSDictionary *) addressBalance;

- (void)checkSmartContract:(HistoryElement *) item;

- (void)checkSmartContractPretendents;

- (void)addNewTokenWithContractAddress:(NSString *) contractAddress;

- (void)addSmartContractPretendent:(NSArray *) addresses
							forKey:(NSString *) key
					  withTemplate:(TemplateModel *) templateModel
			  andLocalContractName:(NSString *) localName;

- (BOOL)addNewContractWithContractAddress:(NSString *) contractAddress
								  withAbi:(NSString *) abiStr
							  andWithName:(NSString *) contractName
							  errorString:(NSString **) errorString;

- (BOOL)addNewTokenWithContractAddress:(NSString *) contractAddress
						   andWithName:(NSString *) contractName
						   errorString:(NSString **) errorString;

- (void)removeContract:(Contract *) contract;

- (void)removeContractPretendentWithTxHash:(NSString *) txHash;

- (void)removeFailedContractPretendentWithTxHash:(NSString *) txHash;

- (NSArray<NSDictionary *> *)decodeDataForBackup;

- (BOOL)encodeDataForBacup:(NSArray<NSDictionary *> *) backup withTemplates:(NSArray<TemplateModel *> *) templates;

@end
