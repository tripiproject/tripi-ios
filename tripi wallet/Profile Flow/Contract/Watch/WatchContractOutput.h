//
//  WatchContractOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 27.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WatchContractOutputDelegate.h"
#import "FavouriteTemplatesCollectionSourceOutput.h"

@protocol WatchContractOutput <NSObject>

@property (weak, nonatomic) id <WatchContractOutputDelegate> delegate;
@property (weak, nonatomic) id <FavouriteTemplatesCollectionSourceOutput> collectionSource;

- (void)changeStateForSelectedTemplate:(TemplateModel *) templateModel;

@end
