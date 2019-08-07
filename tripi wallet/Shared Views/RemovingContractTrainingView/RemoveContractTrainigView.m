//
//  RemoveContractTrainigView.m
//  tripi wallet
//
//  Created by Heaving Line on 09.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "RemoveContractTrainigView.h"

@implementation RemoveContractTrainigView

- (IBAction)didTapOnView:(id) sender {

	if ([self.delegate respondsToSelector:@selector (didTapOnView)]) {

		[self.delegate didTapOnView];
	}
}

@end
