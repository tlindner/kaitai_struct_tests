// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_0.h"

@interface expr_0 : XCTestCase
@property (strong) KSExpr0 *r;
@end

@implementation expr_0

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_encodings.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSExpr0 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_0 {
    XCTAssertEqual(((KSExpr0 *)_r).must_be_f7.unsignedLongLongValue, 247);
    XCTAssertEqualObjects(((KSExpr0 *)_r).must_be_abc123, (@"abc123"));
}
@end
