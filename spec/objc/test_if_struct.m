// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "if_struct.h"

@interface if_struct : XCTestCase
@property (strong) if_struct_t *r;
@end

@implementation if_struct

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/if_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [if_struct_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_if_struct {
    XCTAssertEqual(((operation_if_struct_t *)((if_struct_t *)_r).op1).opcode.unsignedCharValue, 83);
    XCTAssertEqualObjects(((arg_str_if_struct_t *)((operation_if_struct_t *)((if_struct_t *)_r).op1).arg_str).str, (@"foo"));
    XCTAssertEqual(((operation_if_struct_t *)((if_struct_t *)_r).op2).opcode.unsignedCharValue, 84);
    XCTAssertEqual(((arg_tuple_if_struct_t *)((operation_if_struct_t *)((if_struct_t *)_r).op2).arg_tuple).num1.unsignedCharValue, 66);
    XCTAssertEqual(((arg_tuple_if_struct_t *)((operation_if_struct_t *)((if_struct_t *)_r).op2).arg_tuple).num2.unsignedCharValue, 67);
    XCTAssertEqual(((operation_if_struct_t *)((if_struct_t *)_r).op3).opcode.unsignedCharValue, 83);
    XCTAssertEqualObjects(((arg_str_if_struct_t *)((operation_if_struct_t *)((if_struct_t *)_r).op3).arg_str).str, (@"bar"));
}
@end
