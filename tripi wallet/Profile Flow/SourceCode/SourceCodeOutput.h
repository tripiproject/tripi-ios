//
//  SourceCodeOutput.h
//  tripi wallet
//
//  Created by Heaving Line on 13.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Presentable.h"

@protocol SourceCodeOutputDelegate <NSObject>

- (void)didPressedBack;

@end

@protocol SourceCodeOutput <Presentable>

@property (weak, nonatomic) id <SourceCodeOutputDelegate> delegate;
@property (strong, nonatomic) NSAttributedString *sourceCode;

@end
