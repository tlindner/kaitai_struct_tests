#import <XCTest/XCTest.h>
#import "switch_integers.h"

@interface switch_integers : XCTestCase
@property (strong) switch_integers_t *r;
@end

@implementation switch_integers

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_integers.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [switch_integers_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_integers {
    XCTAssertEqual(((switch_integers_t *)_r).opcodes.count, 4);
    XCTAssertEqual(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[0]).code.unsignedCharValue, 1);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[0]).body, @(7));
    XCTAssertEqual(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[1]).code.unsignedCharValue, 2);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[1]).body, @(16448));
    XCTAssertEqual(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[2]).code.unsignedCharValue, 4);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[2]).body, @(4919));
    XCTAssertEqual(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[3]).code.unsignedCharValue, 8);

    /* Manually changed to objected version */
    XCTAssertEqualObjects(((opcode_switch_integers_t *)((switch_integers_t *)_r).opcodes[3]).body, @(4919));
}
@end
