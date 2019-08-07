//
//  BackupFileManager.h
//  tripi wallet
//
//  Created by Heaving Line on 13.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSInteger, BackupOption) {
	Templates = (1 << 0),
	Contracts = (1 << 1),
	Tokens = (1 << 2),
};

@interface BackupFileManager : NSObject

- (void)getBackupFile:(void (^)(NSDictionary *file,
		NSString *path,
		NSInteger size)) completionBlock;

- (void)setBackupFileWithUrl:(NSURL *) url
				   andOption:(BackupOption) option
			andCompletession:(void (^)(BOOL success)) completionBlock;

- (BOOL)getQuickInfoFileWithUrl:(NSURL *) url
					  andOption:(BackupOption) option
			   andCompletession:(void (^)(NSString *date,
					   NSString *version,
					   NSInteger contractCount,
					   NSInteger templateCount,
					   NSInteger tokenCount)) completionBlock;

@end
