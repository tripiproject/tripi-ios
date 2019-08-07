//
//  SmartContractsListViewControllerLight.m
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "SmartContractsListViewControllerLight.h"
#import "SmartContractListItemCell.h"

@interface SmartContractsListViewControllerLight ()

@end

@implementation SmartContractsListViewControllerLight

- (void)tableView:(UITableView *) tableView didHighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TRIPISwipableCellWithButtons *cell = (TRIPISwipableCellWithButtons *)[tableView cellForRowAtIndexPath:indexPath];
	cell.myContentView.backgroundColor = lightBlueColor ();
}

- (void)tableView:(UITableView *) tableView didUnhighlightRowAtIndexPath:(NSIndexPath *) indexPath {

	TRIPISwipableCellWithButtons *cell = (TRIPISwipableCellWithButtons *)[tableView cellForRowAtIndexPath:indexPath];
	cell.myContentView.backgroundColor = [UIColor whiteColor];
}

- (CGFloat)tableView:(UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *) indexPath {
	return 53;
}

- (RemoveContractTrainigView *)trainingViewWithStyle {

	RemoveContractTrainigView *trainingView = [[[NSBundle mainBundle] loadNibNamed:@"RemoveContractTrainingViewLight" owner:self options:nil] objectAtIndex:0];

	return trainingView;
}

@end
