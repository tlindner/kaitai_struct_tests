#import <XCTest/XCTest.h>
#import "switch_integers2.h"

@interface switch_integers2 : XCTestCase
@property (strong) KSSwitchIntegers2 *r;
@end

@implementation switch_integers2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_integers.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSSwitchIntegers2 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_integers2 {
    XCTAssertEqual(((KSSwitchIntegers2 *)_r).code.unsignedCharValue, 1);
	/* manually change to object comparison */
    XCTAssertEqualObjects(((KSSwitchIntegers2 *)_r).len, @(7));
    XCTAssertEqualObjects(((KSSwitchIntegers2 *)_r).ham, ([NSData dataWithBytes:"\x02\x40\x40\x04\x37\x13\x00" length:7]));
    XCTAssertEqual(((KSSwitchIntegers2 *)_r).padding.unsignedCharValue, 0);
    XCTAssertEqualObjects(((KSSwitchIntegers2 *)_r).len_mod_str, (@"13"));
}
@end
