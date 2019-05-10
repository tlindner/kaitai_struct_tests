// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "bits_byte_aligned.h"

@interface bits_byte_aligned : XCTestCase
@property (strong) KSBitsByteAligned *r;
@end

@implementation bits_byte_aligned

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSBitsByteAligned structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_bits_byte_aligned {
    XCTAssertEqual(((KSBitsByteAligned *)_r).one.unsignedCharValue, 20);
    XCTAssertEqual(((KSBitsByteAligned *)_r).byte_1.unsignedCharValue, 65);
    XCTAssertEqual(((KSBitsByteAligned *)_r).two.unsignedCharValue, 2);
    XCTAssertEqual(((KSBitsByteAligned *)_r).three.boolValue, NO);
    XCTAssertEqual(((KSBitsByteAligned *)_r).byte_2.unsignedCharValue, 75);
    XCTAssertEqual(((KSBitsByteAligned *)_r).four.unsignedShortValue, 2892);
    XCTAssertEqualObjects(((KSBitsByteAligned *)_r).byte_3, ([NSData dataWithBytes:"\xFF" length:1]));
    XCTAssertEqual(((KSBitsByteAligned *)_r).full_byte.unsignedCharValue, 255);
    XCTAssertEqual(((KSBitsByteAligned *)_r).byte_4.unsignedCharValue, 80);
}
@end
