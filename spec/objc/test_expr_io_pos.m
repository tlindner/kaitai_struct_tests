// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_io_pos.h"

@interface expr_io_pos : XCTestCase
@property (strong) expr_io_pos_t *r;
@end

@implementation expr_io_pos

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/expr_io_pos.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [expr_io_pos_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_io_pos {
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream1)),identifier(my_str)),Str(CURIOSITY))*/
    XCTAssertEqualObjects(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream1).my_str, (@"CURIOSITY"));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream1)),identifier(body)),List(ArrayBuffer(IntNum(17), IntNum(34), IntNum(51), IntNum(68))))*/
    XCTAssertEqualObjects(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream1).body, ([NSData dataWithBytes:"\x11\x22\x33\x44" length:4]));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream1)),identifier(number)),IntNum(66))*/
    XCTAssertEqual(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream1).number.unsignedShortValue, 66);
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream2)),identifier(my_str)),Str(KILLED))*/
    XCTAssertEqualObjects(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream2).my_str, (@"KILLED"));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream2)),identifier(body)),List(ArrayBuffer(IntNum(97), IntNum(32), IntNum(99), IntNum(97), IntNum(116))))*/
    XCTAssertEqualObjects(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream2).body, ([NSData dataWithBytes:"\x61\x20\x63\x61\x74" length:5]));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(substream2)),identifier(number)),IntNum(103))*/
    XCTAssertEqual(((all_plus_number_expr_io_pos_t *)((expr_io_pos_t *)_r).substream2).number.unsignedShortValue, 103);
}
@end
