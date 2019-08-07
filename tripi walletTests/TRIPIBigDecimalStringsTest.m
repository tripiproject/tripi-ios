//
//  TRIPIBigDecimalStringsTest.m
//  tripi walletTests
//
//  Created by Heaving Line on 04.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TRIPIBigNumber.h"

@interface TRIPIBigDecimalStringsTest : XCTestCase

@end

@implementation TRIPIBigDecimalStringsTest

- (void)testShortStringDecimal1 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"400000000.6780"];

	NSString *result = [decimal shortFormatOfNumber];

	XCTAssertTrue([result isEqualToString:@"4E+8"]);
}

- (void)testShortStringDecimal2 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"4.678000000000000000000"];

	NSString *result = [decimal shortFormatOfNumber];

	XCTAssertTrue([result isEqualToString:@"4.68E+0"]);
}

- (void)testShortStringDecimal3 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678000000000000000000"];

	NSString *result = [decimal shortFormatOfNumber];

	XCTAssertTrue([result isEqualToString:@"6.78E-151"]);
}

- (void)testShortStringDecimal4 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000678000000000000000000"];

	NSString *result = [decimal shortFormatOfNumber];

	XCTAssertTrue([result isEqualToString:@"6.78E-301"]);
}

- (void)testShortStringDecimal5 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"0.5"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"-501"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E-502"]);
}

- (void)testShortStringDecimal6 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"0.5"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"501"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E+500"]);
}

- (void)testShortStringDecimal7 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"5"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"1024"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E+1024"]);
}

- (void)testShortStringDecimal8 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"5000000000000"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"1024"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E+1036"]);
}

- (void)testShortStringDecimal9 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"5"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"10000000000000000"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E+10000000000000000"]);
}

- (void)testShortStringDecimal10 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"5"];
	TRIPIBigNumber *power = [TRIPIBigNumber decimalWithString:@"9223372036854775808"];

	NSString *result = [decimal shortFormatOfNumberWithPowerOf10:power];

	XCTAssertTrue([result isEqualToString:@"5E+9223372036854775808"]);
}


- (void)testShortStringDecimal11 {

	TRIPIBigNumber *decimal = [TRIPIBigNumber decimalWithString:@"12351354256346345"];

	NSString *result = [decimal shortFormatOfNumber];

	XCTAssertTrue([result isEqualToString:@"1.24E+16"]);
}

@end
