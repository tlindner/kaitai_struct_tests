// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_1.h"

@interface expr_1 : XCTestCase
@property (strong) expr_1_t *r;
@end

@implementation expr_1

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_encodings.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [expr_1_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_1 {
    XCTAssertEqual(((expr_1_t *)_r).len_of_1.unsignedShortValue, 10);
    XCTAssertEqual(((expr_1_t *)_r).len_of_1_mod.unsignedLongLongValue, 8);
    XCTAssertEqualObjects(((expr_1_t *)_r).str1, @"Some ASC");
    XCTAssertEqual(((expr_1_t *)_r).str1_len.unsignedLongLongValue, 8);
}
@end
