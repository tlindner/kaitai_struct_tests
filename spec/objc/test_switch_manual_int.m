// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "switch_manual_int.h"

@interface switch_manual_int : XCTestCase
@property (strong) switch_manual_int_t *r;
@end

@implementation switch_manual_int

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_opcodes.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [switch_manual_int_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_manual_int {
    XCTAssertEqual(((switch_manual_int_t *)_r).opcodes.count, 4);
    XCTAssertEqual(((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[0]).code.unsignedCharValue, 83);
    XCTAssertEqualObjects(((strval_opcode_switch_manual_int_t *)((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[0]).body).value, (@"foobar"));
    XCTAssertEqual(((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[1]).code.unsignedCharValue, 73);
    XCTAssertEqual(((intval_opcode_switch_manual_int_t *)((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[1]).body).value.unsignedCharValue, 66);
    XCTAssertEqual(((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[2]).code.unsignedCharValue, 73);
    XCTAssertEqual(((intval_opcode_switch_manual_int_t *)((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[2]).body).value.unsignedCharValue, 55);
    XCTAssertEqual(((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[3]).code.unsignedCharValue, 83);
    XCTAssertEqualObjects(((strval_opcode_switch_manual_int_t *)((opcode_switch_manual_int_t *)((switch_manual_int_t *)_r).opcodes[3]).body).value, (@""));
}
@end
