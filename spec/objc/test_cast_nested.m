// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "cast_nested.h"

@interface cast_nested : XCTestCase
@property (strong) KSCastNested *r;
@end

@implementation cast_nested

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_opcodes.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSCastNested initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_cast_nested {
    XCTAssertEqualObjects(((KSStrval_Opcode_CastNested *)((KSCastNested *)_r).opcodes_0_str).value, (@"foobar"));
    XCTAssertEqualObjects(((KSCastNested *)_r).opcodes_0_str_value, (@"foobar"));
    XCTAssertEqual(((KSIntval_Opcode_CastNested *)((KSCastNested *)_r).opcodes_1_int).value.unsignedCharValue, 66);
    XCTAssertEqual(((KSCastNested *)_r).opcodes_1_int_value.unsignedCharValue, 66);
}
@end
