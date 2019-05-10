#import <XCTest/XCTest.h>
#import "switch_integers2.h"

@interface switch_integers2 : XCTestCase
@property (strong) switch_integers2_t *r;
@end

@implementation switch_integers2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_integers.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [switch_integers2_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_integers2 {
    XCTAssertEqual(((switch_integers2_t *)_r).code.unsignedCharValue, 1);
	/* manually change to object comparison */
    XCTAssertEqualObjects(((switch_integers2_t *)_r).len, @(7));
    XCTAssertEqualObjects(((switch_integers2_t *)_r).ham, ([NSData dataWithBytes:"\x02\x40\x40\x04\x37\x13\x00" length:7]));
    XCTAssertEqual(((switch_integers2_t *)_r).padding.unsignedCharValue, 0);
    XCTAssertEqualObjects(((switch_integers2_t *)_r).len_mod_str, (@"13"));
}
@end
