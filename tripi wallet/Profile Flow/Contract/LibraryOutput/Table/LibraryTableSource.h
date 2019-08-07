//
//  LibraryTableSource.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LibraryTableSourceOutput.h"

@interface LibraryTableSource : NSObject <LibraryTableSourceOutput>

@property (nonatomic) TemplateModel *activeTemplate;
@property (nonatomic) NSArray<TemplateModel *> *templetes;
@property (nonatomic, weak) id <LibraryTableSourceOutputDelegate> delegate;

@end
