
//
//  main.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 29.10.16.
//  Copyright © 2016 TRIPI. All rights reserved.
//

#import "AppDelegate.h"

int main(int argc, char *argv[]) {

	@autoreleasepool {
		[LanguageManager setupCurrentLanguage];
		return UIApplicationMain (argc, argv, nil, NSStringFromClass ([AppDelegate class]));
	}
}

