// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_if.h"

@interface enum_if : XCTestCase
@property (strong) KSEnumIf *r;
@end

@implementation enum_if

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/if_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnumIf initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_if {
    XCTAssertEqualObjects(((KSOperation_EnumIf *)((KSEnumIf *)_r).op1).opcode, ([@"a_string" KSENUMWithDictionary:KSEnumIf._opcodes]));
    XCTAssertEqualObjects(((KSArgStr_EnumIf *)((KSOperation_EnumIf *)((KSEnumIf *)_r).op1).arg_str).str, (@"foo"));
    XCTAssertEqualObjects(((KSOperation_EnumIf *)((KSEnumIf *)_r).op2).opcode, ([@"a_tuple" KSENUMWithDictionary:KSEnumIf._opcodes]));
    XCTAssertEqual(((KSArgTuple_EnumIf *)((KSOperation_EnumIf *)((KSEnumIf *)_r).op2).arg_tuple).num1.unsignedCharValue, 66);
    XCTAssertEqual(((KSArgTuple_EnumIf *)((KSOperation_EnumIf *)((KSEnumIf *)_r).op2).arg_tuple).num2.unsignedCharValue, 67);
    XCTAssertEqualObjects(((KSOperation_EnumIf *)((KSEnumIf *)_r).op3).opcode, ([@"a_string" KSENUMWithDictionary:KSEnumIf._opcodes]));
    XCTAssertEqualObjects(((KSArgStr_EnumIf *)((KSOperation_EnumIf *)((KSEnumIf *)_r).op3).arg_str).str, (@"bar"));
}
@end
