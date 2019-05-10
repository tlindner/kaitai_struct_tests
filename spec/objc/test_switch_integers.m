#import <XCTest/XCTest.h>
#import "switch_integers.h"

@interface switch_integers : XCTestCase
@property (strong) KSSwitchIntegers *r;
@end

@implementation switch_integers

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_integers.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSSwitchIntegers structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_integers {
    XCTAssertEqual(((KSSwitchIntegers *)_r).opcodes.count, 4);
    XCTAssertEqual(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[0]).code.unsignedCharValue, 1);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[0]).body, @(7));
    XCTAssertEqual(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[1]).code.unsignedCharValue, 2);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[1]).body, @(16448));
    XCTAssertEqual(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[2]).code.unsignedCharValue, 4);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[2]).body, @(4919));
    XCTAssertEqual(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[3]).code.unsignedCharValue, 8);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((KSOpcode_SwitchIntegers *)((KSSwitchIntegers *)_r).opcodes[3]).body, @(4919));
}
@end
