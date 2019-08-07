//
//  LibraryViewController.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 14.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BaseViewController.h"
#import "LibraryOutput.h"
#import "Presentable.h"

@interface LibraryViewController : BaseViewController <LibraryOutput, Presentable>

@property (nonatomic, weak) id <LibraryOutputDelegate> delegate;
@property (nonatomic, weak) id <LibraryTableSourceOutput> tableSource;

@end
