//
//  TRIPIHtmlParcer.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPIHTMLTagItem.h"
#import "Cancelable.h"

typedef void(^TRIPITagsItems)(NSArray <TRIPIHTMLTagItem *> *feeds);

@interface TRIPIHtmlParcer : NSObject <Cancelable>

- (void)parceNewsFromHTMLString:(NSString *) html withCompletion:(TRIPITagsItems) completion;

@end
