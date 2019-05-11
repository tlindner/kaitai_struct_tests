// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "integers.h"

@interface integers : XCTestCase
@property (strong) KSIntegers *r;
@end

@implementation integers

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSIntegers structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_integers {
    XCTAssertEqual(((KSIntegers *)_r).uint8.unsignedCharValue, 255);
    XCTAssertEqual(((KSIntegers *)_r).uint16.unsignedShortValue, 65535);
    XCTAssertEqual(((KSIntegers *)_r).uint32.unsignedIntValue, 4294967295UL);
    XCTAssertEqual(((KSIntegers *)_r).uint64.unsignedLongLongValue, 18446744073709551615ULL);
    XCTAssertEqual(((KSIntegers *)_r).sint8.charValue, -1);
    XCTAssertEqual(((KSIntegers *)_r).sint16.shortValue, -1);
    XCTAssertEqual(((KSIntegers *)_r).sint32.intValue, -1);
    XCTAssertEqual(((KSIntegers *)_r).sint64.longLongValue, -1);
    XCTAssertEqual(((KSIntegers *)_r).uint16le.unsignedShortValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).uint32le.unsignedIntValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).uint64le.unsignedLongLongValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).sint16le.shortValue, -66);
    XCTAssertEqual(((KSIntegers *)_r).sint32le.intValue, -66);
    XCTAssertEqual(((KSIntegers *)_r).sint64le.longLongValue, -66);
    XCTAssertEqual(((KSIntegers *)_r).uint16be.unsignedShortValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).uint32be.unsignedIntValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).uint64be.unsignedLongLongValue, 66);
    XCTAssertEqual(((KSIntegers *)_r).sint16be.shortValue, -66);
    XCTAssertEqual(((KSIntegers *)_r).sint32be.intValue, -66);
    XCTAssertEqual(((KSIntegers *)_r).sint64be.longLongValue, -66);
}
@end