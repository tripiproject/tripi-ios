//
//  TRIPIHtmlParcer.m
//  tripi wallet
//
//  Created by Heaving Line on 19.10.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "TFHpple.h"

@interface TRIPIHtmlParcer ()

@property (nonatomic, copy) TRIPITagsItems completion;
@property (nonatomic, strong) NSOperationQueue *workingQueue;
@property (nonatomic, strong) TFHpple *parser;
@end

@implementation TRIPIHtmlParcer


#pragma mark - Custom Accessors

- (NSOperationQueue *)workingQueue {

	if (!_workingQueue) {
		_workingQueue = [[NSOperationQueue alloc] init];
	}
	return _workingQueue;
}

#pragma mark - Public

- (void)parceNewsFromHTMLString:(NSString *) html withCompletion:(TRIPITagsItems) completion {

	__weak __typeof (self) weakSelf = self;

	NSBlockOperation *operation = [[NSBlockOperation alloc] init];

	__weak NSBlockOperation *weakOperation = operation;

	[operation addExecutionBlock:^{

		if (weakOperation.isCancelled) {
			return;
		}

		NSString *htmlWithDiv = [NSString stringWithFormat:@"<div class=\"medium-parcing-container\">%@</div>", html];
		NSData *htmlData = [htmlWithDiv dataUsingEncoding:NSUTF8StringEncoding];
		TFHpple *parser = [TFHpple hppleWithHTMLData:htmlData];
		weakSelf.parser = parser;
		NSString *xpathQueryString = @"//div[@class='medium-parcing-container']";
		NSArray *nodes = [parser searchWithXPathQuery:xpathQueryString];

		NSArray *tagItems = [weakSelf createThreeOfTagsWith:[nodes[0] children] andOperation:weakOperation];

		if (weakOperation.isCancelled) {
			return;
		}

		if (weakSelf.completion) {

			dispatch_async (dispatch_get_main_queue (), ^{
				weakSelf.completion (tagItems);
			});
		}
	}];

	self.completion = completion;
	[self.workingQueue addOperation:operation];

}

#pragma mark - Private

- (NSArray<TRIPIHTMLTagItem *> *)createThreeOfTagsWith:(NSArray<TFHppleElement *> *) elements andOperation:(NSBlockOperation *) operation {

	if (operation.isCancelled) {
		return nil;
	}

	NSMutableArray<TRIPIHTMLTagItem *> *tagsItems = @[].mutableCopy;

	for (TFHppleElement *happleElement in elements) {

		if (operation.isCancelled) {
			break;
		}

		if ([happleElement.tagName isEqualToString:@"text"] || [happleElement.tagName isEqualToString:@"script"]) {
			continue;
		}

		if ([happleElement.tagName isEqualToString:@"img"] && [happleElement.attributes[@"width"] isEqualToString:@"1"]) {
			continue;
		}

		TRIPIHTMLTagItem *tag = [[TRIPIHTMLTagItem alloc] init];
		tag.content = happleElement.content;
		tag.name = happleElement.tagName;
		tag.raw = happleElement.raw;
		tag.attributes = happleElement.attributes;
		tag.attributedContent = [self attributedStringWithHTML:tag.raw];

		if (happleElement.children.count > 0 && !operation.isCancelled) {

			tag.childrenTags = [self createThreeOfTagsWith:happleElement.children andOperation:operation];
		}

		[tagsItems addObject:tag];
	}

	return [tagsItems copy];
}

- (NSAttributedString *)attributedStringWithHTML:(NSString *) HTML {

	NSDictionary *options = @{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
			NSCharacterEncodingDocumentAttribute: @(NSUTF8StringEncoding)
	};
	NSMutableAttributedString *attrString = [[NSAttributedString alloc] initWithData:[HTML dataUsingEncoding:NSUTF8StringEncoding] options:options documentAttributes:NULL error:NULL].mutableCopy;

	while ([attrString.mutableString containsString:@"\n"]) {
		NSRange range = [attrString.mutableString rangeOfString:@"\n"];
		[attrString replaceCharactersInRange:range withAttributedString:[[NSMutableAttributedString alloc] initWithString:@" "]];
	}
	return attrString;
}

#pragma mark - Cancelable

- (void)cancel {
	[self.workingQueue cancelAllOperations];
}

@end
