// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "default_endian_expr_is_le.h"

@interface default_endian_expr_is_le : XCTestCase
@property (strong) KSDefaultEndianExprIsLe *r;
@end

@implementation default_endian_expr_is_le

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/endian_expr.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSDefaultEndianExprIsLe initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_default_endian_expr_is_le {
    XCTAssertEqualObjects(((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[0]).indicator, ([NSData dataWithBytes:"\x49\x49" length:2]));
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[0]).main).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[0]).main).some_int_be.unsignedShortValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[0]).main).some_int_le.unsignedShortValue, 66);
    XCTAssertEqualObjects(((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[1]).indicator, ([NSData dataWithBytes:"\x4D\x4D" length:2]));
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[1]).main).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[1]).main).some_int_be.unsignedShortValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[1]).main).some_int_le.unsignedShortValue, 66);
    XCTAssertEqualObjects(((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[2]).indicator, ([NSData dataWithBytes:"\x58\x58" length:2]));
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[2]).main).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[2]).main).some_int_be.unsignedShortValue, 66);
    XCTAssertEqual(((KSMainObj_Doc_DefaultEndianExprIsLe *)((KSDoc_DefaultEndianExprIsLe *)((KSDefaultEndianExprIsLe *)_r).docs[2]).main).some_int_le.unsignedShortValue, 66);
}
@end
