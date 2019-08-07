//
//  QStoreCollectionViewSource.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 26.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "QStoreCollectionViewSource.h"
#import "QStoreCollectionViewCell.h"

@implementation QStoreCollectionViewSource

- (NSInteger)collectionView:(UICollectionView *) collectionView numberOfItemsInSection:(NSInteger) section {
	return self.elements.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *) collectionView cellForItemAtIndexPath:(NSIndexPath *) indexPath {
	QStoreCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"QStoreCollectionViewCell" forIndexPath:indexPath];

	QStoreContractElement *element = [self.elements objectAtIndex:indexPath.row];

	cell.nameLabel.text = element.name;
	cell.typeLabel.text = [element.typeString capitalizedString];
	cell.amountLabel.text = element.priceString;
	cell.currencyLabel.text = NSLocalizedString(@"TRIPI", nil);
	cell.iconImageView.image = [UIImage imageNamed:[element getImageNameByType]];

	return cell;
}

- (void)collectionView:(UICollectionView *) collectionView didSelectItemAtIndexPath:(NSIndexPath *) indexPath {
	if ([self.delegate respondsToSelector:@selector (didSelectCollectionCellWithElement:)]) {
		[self.delegate didSelectCollectionCellWithElement:[self.elements objectAtIndex:indexPath.row]];
	}
}

@end
