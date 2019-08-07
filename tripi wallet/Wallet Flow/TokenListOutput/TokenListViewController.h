//
//  TokenListViewController.h
//  tripi wallet
//
//  Created by Heaving Line on 19.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TokenListOutput.h"

@interface TokenListViewController : BaseViewController <UITableViewDelegate, UITableViewDataSource, TokenListOutput>

@property (copy, nonatomic) NSArray<Contract *> *tokens;
@property (weak, nonatomic) id <TokenListOutputDelegate> delegate;

@end
