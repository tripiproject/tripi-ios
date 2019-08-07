//
//  UIImage+Extension.m
//  tripi wallet
//
//  Created by Heaving Line on 05.05.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)changeViewToImage:(UIView *) viewForImage {

	UIGraphicsBeginImageContext (viewForImage.bounds.size);
	[viewForImage.layer renderInContext:UIGraphicsGetCurrentContext ()];
	UIImage *img = UIGraphicsGetImageFromCurrentImageContext ();
	UIGraphicsEndImageContext ();
	return img;
}

@end
