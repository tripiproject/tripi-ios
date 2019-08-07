//
//  RemoveContractTrainigView.h
//  tripi wallet
//
//  Created by Heaving Line on 09.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RemoveContractTrainigViewDelegate <NSObject>

- (void)didTapOnView;

@end

@interface RemoveContractTrainigView : UIView

@property (weak, nonatomic) id <RemoveContractTrainigViewDelegate> delegate;

@end
