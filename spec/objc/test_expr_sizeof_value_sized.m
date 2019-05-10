// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_sizeof_value_sized.h"

@interface expr_sizeof_value_sized : XCTestCase
@property (strong) KSExprSizeofValueSized *r;
@end

@implementation expr_sizeof_value_sized

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSExprSizeofValueSized structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_sizeof_value_sized {
    XCTAssertEqual(((KSExprSizeofValueSized *)_r).self_sizeof.unsignedLongLongValue, (12 + 2));
    XCTAssertEqual(((KSExprSizeofValueSized *)_r).sizeof_block.unsignedLongLongValue, 12);
    XCTAssertEqual(((KSExprSizeofValueSized *)_r).sizeof_block_a.unsignedLongLongValue, 1);
    XCTAssertEqual(((KSExprSizeofValueSized *)_r).sizeof_block_b.unsignedLongLongValue, 4);
    XCTAssertEqual(((KSExprSizeofValueSized *)_r).sizeof_block_c.unsignedLongLongValue, 2);
}
@end
