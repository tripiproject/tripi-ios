//
//  ChooseConverterView.h
//  tripi wallet
//
//  Created by Heaving Line on 08.02.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventLogHeader.h"

@protocol ChooseConverterViewDelegate <NSObject>

- (void)didChoseType:(ConvertionAddressType) type;

@end

@interface ChooseConverterView : UIView

@property (weak, nonatomic) id <ChooseConverterViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIView *dropListView;

- (void)setOffset:(CGRect) position;

@end
