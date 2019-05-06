// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "index_sizes.h"

@interface index_sizes : XCTestCase
@property (strong) index_sizes_t *r;
@end

@implementation index_sizes

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/index_sizes.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [index_sizes_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_index_sizes {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(qty)),IntNum(3))*/
    XCTAssertEqual(((index_sizes_t *)_r).qty.unsignedIntValue, 3);
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(sizes)),IntNum(0)),IntNum(1))*/
    XCTAssertEqual(((index_sizes_t *)_r).sizes[0].unsignedIntValue, 1);
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(sizes)),IntNum(1)),IntNum(8))*/
    XCTAssertEqual(((index_sizes_t *)_r).sizes[1].unsignedIntValue, 8);
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(sizes)),IntNum(2)),IntNum(4))*/
    XCTAssertEqual(((index_sizes_t *)_r).sizes[2].unsignedIntValue, 4);
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(bufs)),IntNum(0)),Str(A))*/
    XCTAssertEqualObjects(((index_sizes_t *)_r).bufs[0], (@"A"));
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(bufs)),IntNum(1)),Str(BBBBBBBB))*/
    XCTAssertEqualObjects(((index_sizes_t *)_r).bufs[1], (@"BBBBBBBB"));
    /* simpleAssert: TestAssert(Subscript(Attribute(Name(identifier(q1w2e3)),identifier(bufs)),IntNum(2)),Str(CCCC))*/
    XCTAssertEqualObjects(((index_sizes_t *)_r).bufs[2], (@"CCCC"));
}
@end
