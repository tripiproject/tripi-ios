//
//  SmartContractMenuViewControllerDark.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SmartContractMenuViewControllerDark.h"
#import "ChoiseSmartContractCellDark.h"

@interface SmartContractMenuViewControllerDark ()

@end

@implementation SmartContractMenuViewControllerDark

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	ChoiseSmartContractCell *cell = (ChoiseSmartContractCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.image.tintColor =
			cell.disclosure.tintColor =
					cell.smartContractType.textColor = customBlackColor ();
}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	ChoiseSmartContractCell *cell = (ChoiseSmartContractCell *)[tableView cellForRowAtIndexPath:indexPath];
	cell.image.tintColor =
			cell.disclosure.tintColor =
					cell.smartContractType.textColor = customBlueColor ();
}

@end
