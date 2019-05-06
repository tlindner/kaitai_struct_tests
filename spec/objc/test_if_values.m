// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "if_values.h"

@interface if_values : XCTestCase
@property (strong) if_values_t *r;
@end

@implementation if_values

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [if_values_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_if_values {
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(codes)),IntNum(0)),identifier(opcode)),IntNum(80))*/
    XCTAssertEqual(((code_if_values_t *)((if_values_t *)_r).codes[0]).opcode.unsignedCharValue, 80);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(codes)),IntNum(0)),identifier(half_opcode)),IntNum(40))*/
    XCTAssertEqual(((code_if_values_t *)((if_values_t *)_r).codes[0]).half_opcode.unsignedLongLongValue, 40);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(codes)),IntNum(1)),identifier(opcode)),IntNum(65))*/
    XCTAssertEqual(((code_if_values_t *)((if_values_t *)_r).codes[1]).opcode.unsignedCharValue, 65);
    XCTAssertNil(((if_values_t *)_r).codes[1].half_opcode);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(codes)),IntNum(2)),identifier(opcode)),IntNum(67))*/
    XCTAssertEqual(((code_if_values_t *)((if_values_t *)_r).codes[2]).opcode.unsignedCharValue, 67);
    XCTAssertNil(((if_values_t *)_r).codes[2].half_opcode);
}
@end
