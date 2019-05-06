// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_bytes_cmp.h"

@interface expr_bytes_cmp : XCTestCase
@property (strong) expr_bytes_cmp_t *r;
@end

@implementation expr_bytes_cmp

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [expr_bytes_cmp_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_bytes_cmp {
    XCTAssertEqualObjects(((expr_bytes_cmp_t *)_r).one, ([NSData dataWithBytes:"\x50" length:1]));
    XCTAssertEqualObjects(((expr_bytes_cmp_t *)_r).two, ([NSData dataWithBytes:"\x41\x43\x4B" length:3]));
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_eq.boolValue, YES);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_ne.boolValue, NO);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_lt.boolValue, YES);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_gt.boolValue, NO);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_le.boolValue, YES);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_ge.boolValue, NO);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_lt2.boolValue, NO);
    XCTAssertEqual(((expr_bytes_cmp_t *)_r).is_gt2.boolValue, YES);
}
@end
