// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "repeat_until_complex.h"

@interface repeat_until_complex : XCTestCase
@property (strong) repeat_until_complex_t *r;
@end

@implementation repeat_until_complex

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/repeat_until_complex.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [repeat_until_complex_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_repeat_until_complex {
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(first)),identifier(size)),IntNum(3))*/
    XCTAssertEqual(((repeat_until_complex_t *)_r).first.count, 3);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(first)),IntNum(0)),identifier(count)),IntNum(4))*/
    XCTAssertEqual(((type_u1_repeat_until_complex_t *)((repeat_until_complex_t *)_r).first[0]).count.unsignedCharValue, 4);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(first)),IntNum(0)),identifier(values)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(1)), IntNum(2), IntNum(3), IntNum(4))))*/
    XCTAssertEqualObjects(((type_u1_repeat_until_complex_t *)((repeat_until_complex_t *)_r).first[0]).values, (@[@((0 + 1)), @(2), @(3), @(4)]));
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(first)),IntNum(1)),identifier(count)),IntNum(2))*/
    XCTAssertEqual(((type_u1_repeat_until_complex_t *)((repeat_until_complex_t *)_r).first[1]).count.unsignedCharValue, 2);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(first)),IntNum(1)),identifier(values)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(1)), IntNum(2))))*/
    XCTAssertEqualObjects(((type_u1_repeat_until_complex_t *)((repeat_until_complex_t *)_r).first[1]).values, (@[@((0 + 1)), @(2)]));
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(first)),IntNum(2)),identifier(count)),IntNum(0))*/
    XCTAssertEqual(((type_u1_repeat_until_complex_t *)((repeat_until_complex_t *)_r).first[2]).count.unsignedCharValue, 0);
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(second)),identifier(size)),IntNum(4))*/
    XCTAssertEqual(((repeat_until_complex_t *)_r).second.count, 4);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(0)),identifier(count)),IntNum(6))*/
    XCTAssertEqual(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[0]).count.unsignedShortValue, 6);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(0)),identifier(values)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(1)), IntNum(2), IntNum(3), IntNum(4), IntNum(5), IntNum(6))))*/
    XCTAssertEqualObjects(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[0]).values, (@[@((0 + 1)), @(2), @(3), @(4), @(5), @(6)]));
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(1)),identifier(count)),IntNum(3))*/
    XCTAssertEqual(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[1]).count.unsignedShortValue, 3);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(1)),identifier(values)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(1)), IntNum(2), IntNum(3))))*/
    XCTAssertEqualObjects(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[1]).values, (@[@((0 + 1)), @(2), @(3)]));
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(2)),identifier(count)),IntNum(4))*/
    XCTAssertEqual(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[2]).count.unsignedShortValue, 4);
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(2)),identifier(values)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(1)), IntNum(2), IntNum(3), IntNum(4))))*/
    XCTAssertEqualObjects(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[2]).values, (@[@((0 + 1)), @(2), @(3), @(4)]));
    /* simpleAssert: TestAssert(Attribute(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(second)),IntNum(3)),identifier(count)),IntNum(0))*/
    XCTAssertEqual(((type_u2_repeat_until_complex_t *)((repeat_until_complex_t *)_r).second[3]).count.unsignedShortValue, 0);
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(third)),List(ArrayBuffer(BinOp(IntNum(0),Add,IntNum(102)), IntNum(111), IntNum(111), IntNum(98), IntNum(97), IntNum(114), IntNum(0))))*/
    XCTAssertEqualObjects(((repeat_until_complex_t *)_r).third, (@[@((0 + 102)), @(111), @(111), @(98), @(97), @(114), @(0)]));
}
@end
