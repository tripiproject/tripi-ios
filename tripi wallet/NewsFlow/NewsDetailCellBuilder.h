//
//  NewsCellBuilder.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRIPIHTMLTagItem.h"

@interface NewsDetailCellBuilder : NSObject

- (UITableViewCell *)getCellWithTagItem:(TRIPIHTMLTagItem *) tag fromTable:(UITableView *) tableView withIndexPath:(NSIndexPath *) indexPath;

- (UITableViewCell *)getCellTitleWithFeedItem:(TRIPIFeedItem *) feedItem fromTable:(UITableView *) tableView withIndexPath:(NSIndexPath *) indexPath;

@end
