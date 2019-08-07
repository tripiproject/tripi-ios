//
//  ExportWalletBrandKeyOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExportWalletBrandKeyOutputDelegate.h"
#import "Presentable.h"

@protocol ExportWalletBrandKeyOutput <Presentable>

@property (weak, nonatomic) id <ExportWalletBrandKeyOutputDelegate> delegate;
@property (nonatomic, copy) NSArray<NSString*> *brandKey;

@end
