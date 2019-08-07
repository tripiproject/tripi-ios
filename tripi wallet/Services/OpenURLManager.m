//
//  OpenURLManager.m
//  tripi wallet
//
//  Created by Heaving Line on 05.07.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//


@implementation OpenURLManager

- (void)launchFromUrl:(NSURL *) url {

	NSURLComponents *urlComponents = [NSURLComponents componentsWithURL:url
												resolvingAgainstBaseURL:NO];
	NSArray *queryItems = urlComponents.queryItems;

	NSString *address = [NSString valueForKey:@"address" fromQueryItems:queryItems];
	NSString *amount = [NSString valueForKey:@"amount" fromQueryItems:queryItems];

	[[ApplicationCoordinator sharedInstance] startFromOpenURLWithAddress:address andAmount:amount];
}

- (void)storeAuthToYesWithAdddress:(NSString *) address {

	[SLocator.dataOperation addGropFileWithName:groupFileName dataSource:@{@"isHaveWallet": @"YES",
			@"address": address}];
}

- (void)clear {

	[SLocator.dataOperation addGropFileWithName:groupFileName dataSource:@{@"isHaveWallet": @"NO",
			@"address": [NSNull null]}];
}

@end
