//
//  TemplateTokenViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TemplateTokenViewControllerDark.h"
#import "TokenTemplateCell.h"

@interface TemplateTokenViewControllerDark ()

@end

@implementation TemplateTokenViewControllerDark

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TokenTemplateCell *cell = (TokenTemplateCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.disclousureImage.tintColor =
			cell.tokenIdentifire.backgroundColor =
					cell.creationDate.textColor =
							cell.templateName.textColor = customBlackColor ();

	cell.tokenIdentifire.textColor = customRedColor ();
}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TokenTemplateCell *cell = (TokenTemplateCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.disclousureImage.tintColor =
			cell.tokenIdentifire.backgroundColor =
					cell.creationDate.textColor =
							cell.templateName.textColor = customBlueColor ();

	cell.tokenIdentifire.textColor = customBlackColor ();
}

@end
