// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "bits_simple.h"

@interface bits_simple : XCTestCase
@property (strong) KSBitsSimple *r;
@end

@implementation bits_simple

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSBitsSimple initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_bits_simple {
    XCTAssertEqual(((KSBitsSimple *)_r).byte_1.unsignedCharValue, 80);
    XCTAssertEqual(((KSBitsSimple *)_r).byte_2.unsignedCharValue, 65);
    XCTAssertEqual(((KSBitsSimple *)_r).bits_a.boolValue, NO);
    XCTAssertEqual(((KSBitsSimple *)_r).bits_b.unsignedCharValue, 4);
    XCTAssertEqual(((KSBitsSimple *)_r).bits_c.unsignedCharValue, 3);
    XCTAssertEqual(((KSBitsSimple *)_r).large_bits_1.unsignedShortValue, 300);
    XCTAssertEqual(((KSBitsSimple *)_r).spacer.unsignedCharValue, 5);
    XCTAssertEqual(((KSBitsSimple *)_r).large_bits_2.unsignedShortValue, 1329);
    XCTAssertEqual(((KSBitsSimple *)_r).normal_s2.shortValue, -1);
    XCTAssertEqual(((KSBitsSimple *)_r).byte_8_9_10.unsignedIntValue, 5259587);
    XCTAssertEqual(((KSBitsSimple *)_r).byte_11_to_14.unsignedIntValue, 1261262125);
    XCTAssertEqual(((KSBitsSimple *)_r).byte_15_to_19.unsignedLongLongValue, 293220057087LL);
    XCTAssertEqual(((KSBitsSimple *)_r).byte_20_to_27.unsignedLongLongValue, 18446744073709551615ULL);
    XCTAssertEqual(((KSBitsSimple *)_r).test_if_b1.charValue, 123);
}
@end
