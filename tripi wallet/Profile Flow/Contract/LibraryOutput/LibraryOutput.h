//
//  LibraryOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LibraryOutputDelegate.h"
#import "LibraryTableSourceOutput.h"

@protocol LibraryOutput <NSObject>

@property (nonatomic, weak) id <LibraryOutputDelegate> delegate;
@property (nonatomic, weak) id <LibraryTableSourceOutput> tableSource;

@end
