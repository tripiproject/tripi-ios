//
//  BTCAddress+Extension.m
//  tripi wallet
//
//  Created by Sharaev Vladimir on 16.06.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import "BTCAddress+Extension.h"

enum {
	CustomBTCPublicKeyAddressVersion = 65,
	CustomBTCPrivateKeyAddressVersion = 117,
	CustomBTCScriptHashAddressVersion = 61,
	CustomBTCPublicKeyAddressVersionTestnet = 120,
	CustomBTCPrivateKeyAddressVersionTestnet = 239,
	CustomBTCScriptHashAddressVersionTestnet = 110,
};

@implementation BTCPublicKeyAddress (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCPublicKeyAddressVersion;
}

@end

@implementation BTCPrivateKeyAddress (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCPrivateKeyAddressVersion;
}

@end

@implementation BTCScriptHashAddress (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCScriptHashAddressVersion;
}

@end

@implementation BTCPublicKeyAddressTestnet (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCPublicKeyAddressVersionTestnet;
}

@end

@implementation BTCPrivateKeyAddressTestnet (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCPrivateKeyAddressVersionTestnet;
}

@end

@implementation BTCScriptHashAddressTestnet (Extension)

+ (uint8_t)BTCVersionPrefix {
	return CustomBTCScriptHashAddressVersionTestnet;
}

@end
