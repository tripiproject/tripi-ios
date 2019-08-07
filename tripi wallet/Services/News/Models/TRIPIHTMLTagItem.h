//
//  TRIPIHTMLTagItem.h
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRIPITagsAttribute.h"

@interface TRIPIHTMLTagItem : NSObject <NSCoding>

@property (nonatomic, copy) NSString *raw;
@property (nonatomic, copy) NSAttributedString *attributedContent;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSDictionary *attributes;
@property (nonatomic, copy) NSArray<TRIPIHTMLTagItem *> *childrenTags;

@end

