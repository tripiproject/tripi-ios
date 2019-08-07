//
//  TemplateTokenViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TemplateTokenViewControllerLight.h"
#import "TokenTemplateCell.h"

@interface TemplateTokenViewControllerLight ()

@end

@implementation TemplateTokenViewControllerLight

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TokenTemplateCell *cell = (TokenTemplateCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.tokenIdentifire.backgroundColor = lightGreenColor ();
}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TokenTemplateCell *cell = (TokenTemplateCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.tokenIdentifire.backgroundColor = lightGreenColor ();
}

@end
