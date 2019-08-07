//
//  ContractInterfaceManager.h
//  tripi wallet
//
//  Created by Heaving Line on 16.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class InterfaceInputFormModel;
@class AbiinterfaceItem;
@class ResultTokenInputsModel;

@interface ContractInterfaceManager : NSObject

- (InterfaceInputFormModel *)tokenInterfaceWithTemplate:(NSString *) templateName;

- (InterfaceInputFormModel *)tokenQRC20Interface;

- (NSData *)tokenBitecodeWithTemplate:(NSString *) templateName andParam:(NSDictionary *) args;

- (NSData *)tokenBitecodeWithTemplate:(NSString *) templateName andArray:(NSArray *) args;

- (NSString *)stringHashOfFunction:(AbiinterfaceItem *) fuctionItem;

- (NSString *)stringHashOfFunction:(AbiinterfaceItem *) fuctionItem appendingParam:(NSArray *) param;

- (NSData *)hashOfFunction:(AbiinterfaceItem *) fuctionItem;

- (NSData *)hashOfFunction:(AbiinterfaceItem *) fuctionItem appendingParam:(NSArray *) param;

- (NSArray *)arrayFromAbiString:(NSString *) abiString;


- (AbiinterfaceItem *)tokenStandartTransferMethodInterface;

- (AbiinterfaceItem *)tokenStandartNamePropertyInterface;

- (AbiinterfaceItem *)tokenStandartTotalSupplyPropertyInterface;

- (AbiinterfaceItem *)tokenStandartSymbolPropertyInterface;

- (AbiinterfaceItem *)tokenStandartDecimalPropertyInterface;

- (BOOL)isERCTokenStandartInterface:(NSArray *) interface;

- (BOOL)isERCTokenStandartAbiString:(NSString *) abiString;

- (BOOL)isInterfaceArray:(NSArray *) intefaceArray equalQRC20InterfaceArray:(NSArray *) qrc20;

@end
