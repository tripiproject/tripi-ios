//
//  NoContractView.h
//  tripi wallet
//
//  Created by Heaving Line on 26.12.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NoContractViewDelegate <NSObject>

-(void)didUnsubscribeToken;

@end

@interface NoContractView : UIView

@property (weak, nonatomic) id <NoContractViewDelegate> delegate;

@end
