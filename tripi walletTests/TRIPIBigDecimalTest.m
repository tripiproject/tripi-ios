//
//  TRIPIBigDecimalTest.m
//  tripi walletTests
//
//  Created by Heaving Line on 03.11.17.
//  Copyright © 2019 TRIPI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TRIPIBigNumber.h"

@interface TRIPIBigDecimalTest : XCTestCase

@end

@implementation TRIPIBigDecimalTest

#pragma mark - isLessThan: tests

- (void)test_isLessThan_whenGreaterThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6779"];

	BOOL result = [decimalNumberA isLessThan:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isLessThan_whenLessThan_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6781"];

	BOOL result = [decimalNumberA isLessThan:decimalNumberB];

	XCTAssertTrue(result);
}

- (void)test_isLessThan_whenEqualTo_returnsNO {
	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6780"];

	BOOL result = [decimalNumberA isGreaterThan:decimalNumberB];

	XCTAssertFalse(result);
}

#pragma mark - isLessThanOrEqualTo: tests

- (void)test_isLessThanOrEqualTo_whenGreaterThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6779"];

	BOOL result = [decimalNumberA isLessThanOrEqualTo:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isLessThanOrEqualTo_whenLessThan_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6781"];

	BOOL result = [decimalNumberA isLessThanOrEqualTo:decimalNumberB];

	XCTAssertTrue(result);
}

- (void)test_isLessThanOrEqualTo_whenEqualTo_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6780"];

	BOOL result = [decimalNumberA isLessThanOrEqualTo:decimalNumberB];

	XCTAssertTrue(result);
}

#pragma mark - isGreaterThan: tests

- (void)test_isGreaterThan_whenGreaterThan_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6779"];

	BOOL result = [decimalNumberA isGreaterThan:decimalNumberB];

	XCTAssertTrue(result);
}

- (void)test_isGreaterThan_whenLessThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6781"];

	BOOL result = [decimalNumberA isGreaterThan:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isGreaterThan_whenEqualTo_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6780"];

	BOOL result = [decimalNumberA isGreaterThan:decimalNumberB];

	XCTAssertFalse(result);
}

#pragma mark - isGreaterThanOrEqualTo: tests

- (void)test_isGreaterThanOrEqualTo_whenGreaterThan_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6779"];

	BOOL result = [decimalNumberA isGreaterThanOrEqualTo:decimalNumberB];

	XCTAssertTrue(result);
}

- (void)test_isGreaterThanOrEqualTo_whenLessThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6781"];

	BOOL result = [decimalNumberA isGreaterThanOrEqualTo:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isGreaterThanOrEqualTo_whenEqualTo_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6780"];

	BOOL result = [decimalNumberA isGreaterThanOrEqualTo:decimalNumberB];

	XCTAssertTrue(result);
}

#pragma mark - isEqualToDecimalNumber: tests

- (void)test_isEqualToDecimalNumber_whenGreaterThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6779"];

	BOOL result = [decimalNumberA isEqualToDecimalNumber:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isEqualToDecimalNumber_whenLessThan_returnsNO {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6781"];

	BOOL result = [decimalNumberA isEqualToDecimalNumber:decimalNumberB];

	XCTAssertFalse(result);
}

- (void)test_isEqualToDecimalNumber_whenEqualTo_returnsYES {

	TRIPIBigNumber *decimalNumberA = [TRIPIBigNumber decimalWithString:@"4.6780"];
	TRIPIBigNumber *decimalNumberB = [TRIPIBigNumber decimalWithString:@"4.6780"];

	BOOL result = [decimalNumberA isEqualToDecimalNumber:decimalNumberB];

	XCTAssertTrue(result);
}

@end
