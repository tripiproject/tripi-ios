//
//  LibraryTableSourceOutput.h
//  tripi wallet
//
//  Created by Sharaev Vladimir on 17.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "LibraryTableSourceOutputDelegate.h"

@protocol LibraryTableSourceOutput <NSObject, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) TemplateModel *activeTemplate;
@property (nonatomic) NSArray<TemplateModel *> *templetes;
@property (nonatomic, weak) id <LibraryTableSourceOutputDelegate> delegate;

@end
