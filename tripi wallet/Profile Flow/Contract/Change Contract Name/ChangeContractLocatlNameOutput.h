//
//  ChangeContractLocatlNameOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 30.01.2018.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@protocol ChangeContractLocatlNameOutputDelegate <NSObject>

-(void)didPressedBack;
-(void)didChangeName:(NSString*) newLocalName withContract:(Contract*) contract;

@end


@protocol ChangeContractLocatlNameOutput <Presentable>

@property (weak, nonatomic) id <ChangeContractLocatlNameOutputDelegate> delegate;
@property (strong, nonatomic) Contract* contract;

@end
