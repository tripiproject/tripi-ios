//
//  ImageLoader.h
//  tripi wallet
//
//  Created by Heaving Line on 21.05.17.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageLoader : NSObject

- (void)getImageWithUrl:(NSString *) url
				andSize:(CGSize) size
	  withResultHandler:(void (^)(UIImage *image)) complete;


@end
