// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "type_int_unary_op.h"

@interface type_int_unary_op : XCTestCase
@property (strong) type_int_unary_op_t *r;
@end

@implementation type_int_unary_op

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [type_int_unary_op_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_type_int_unary_op {
    XCTAssertEqual(((type_int_unary_op_t *)_r).value_s2.shortValue, 16720);
    XCTAssertEqual(((type_int_unary_op_t *)_r).value_s8.longLongValue, 4706543082108963651LL);
    XCTAssertEqual(((type_int_unary_op_t *)_r).unary_s2.unsignedLongLongValue, -16720);
    XCTAssertEqual(((type_int_unary_op_t *)_r).unary_s8.longLongValue, -4706543082108963651LL);
}
@end
