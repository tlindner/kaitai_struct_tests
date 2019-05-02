// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_if.h"

@interface enum_if : XCTestCase
@property (strong) enum_if_t *r;
@end

@implementation enum_if

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/if_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [enum_if_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_if {
    XCTAssertEqualObjects(((operation_enum_if_t *)((enum_if_t *)_r).op1).opcode, [@"a_string" KSENUMWithDictionary:enum_if_t._opcodes]);
    XCTAssertEqualObjects(((arg_str_enum_if_t *)((operation_enum_if_t *)((enum_if_t *)_r).op1).arg_str).str, @"foo");
    XCTAssertEqualObjects(((operation_enum_if_t *)((enum_if_t *)_r).op2).opcode, [@"a_tuple" KSENUMWithDictionary:enum_if_t._opcodes]);
    XCTAssertEqual(((arg_tuple_enum_if_t *)((operation_enum_if_t *)((enum_if_t *)_r).op2).arg_tuple).num1.unsignedCharValue, 66);
    XCTAssertEqual(((arg_tuple_enum_if_t *)((operation_enum_if_t *)((enum_if_t *)_r).op2).arg_tuple).num2.unsignedCharValue, 67);
    XCTAssertEqualObjects(((operation_enum_if_t *)((enum_if_t *)_r).op3).opcode, [@"a_string" KSENUMWithDictionary:enum_if_t._opcodes]);
    XCTAssertEqualObjects(((arg_str_enum_if_t *)((operation_enum_if_t *)((enum_if_t *)_r).op3).arg_str).str, @"bar");
}
@end
