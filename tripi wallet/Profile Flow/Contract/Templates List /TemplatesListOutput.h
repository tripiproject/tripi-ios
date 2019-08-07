//
//  TemplatesListOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 28.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TemplatesListOutputDelegate.h"
#import "TemplateModel.h"
#import "Presentable.h"

@protocol TemplatesListOutput <Presentable>

@property (copy, nonatomic) NSArray <TemplateModel *> *templateModels;
@property (weak, nonatomic) id <TemplatesListOutputDelegate> delegate;

@end
