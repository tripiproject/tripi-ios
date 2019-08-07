//
//  ExportBrainKeyOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 10.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "ExportBrainKeyOutputDelegate.h"

@protocol ExportBrainKeyOutput <NSObject>

@property (nonatomic, weak) id <ExportBrainKeyOutputDelegate> delegate;
@property (nonatomic, copy) NSString *brandKey;

@end
