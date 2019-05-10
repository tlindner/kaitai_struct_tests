// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_sizeof_value_0.h"

@interface expr_sizeof_value_0 : XCTestCase
@property (strong) KSExprSizeofValue0 *r;
@end

@implementation expr_sizeof_value_0

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSExprSizeofValue0 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_sizeof_value_0 {
    XCTAssertEqual(((KSExprSizeofValue0 *)_r).self_sizeof.unsignedLongLongValue, (((1 + 4) + 2) + 2));
    XCTAssertEqual(((KSExprSizeofValue0 *)_r).sizeof_block.unsignedLongLongValue, ((1 + 4) + 2));
    XCTAssertEqual(((KSExprSizeofValue0 *)_r).sizeof_block_a.unsignedLongLongValue, 1);
    XCTAssertEqual(((KSExprSizeofValue0 *)_r).sizeof_block_b.unsignedLongLongValue, 4);
    XCTAssertEqual(((KSExprSizeofValue0 *)_r).sizeof_block_c.unsignedLongLongValue, 2);
}
@end
