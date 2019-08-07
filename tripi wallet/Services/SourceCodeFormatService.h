//
//  SourceCodeFormatService.h
//  tripi wallet
//
//  Created by Heaving Line on 13.11.2017.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SourceCodeFormatService : NSObject

- (NSAttributedString *)formattingSourceCodeStringWithString:(NSString *) sourceCode;

@end
