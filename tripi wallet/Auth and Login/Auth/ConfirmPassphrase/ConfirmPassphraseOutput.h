//
//  ConfirmPassphraseOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 03.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@protocol ConfirmPassphraseOutputDelegate <NSObject>

-(void)didEnterWords:(NSArray<NSString*>*) words;
-(void)didBackPressed;

@end

@protocol ConfirmPassphraseOutput <Presentable>

@property (weak, nonatomic) id <ConfirmPassphraseOutputDelegate> delegate;
@property (copy, nonatomic) NSArray* bkWords;

-(void)failedRemindWords;

@end
