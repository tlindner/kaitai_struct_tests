// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "default_endian_expr_inherited.h"

@interface default_endian_expr_inherited : XCTestCase
@property (strong) default_endian_expr_inherited_t *r;
@end

@implementation default_endian_expr_inherited

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/endian_expr.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [default_endian_expr_inherited_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_default_endian_expr_inherited {
    XCTAssertEqualObjects(((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[0]).indicator, ([NSData dataWithBytes:"\x49\x49" length:2]));
    XCTAssertEqual(((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[0]).main).insides).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[0]).main).insides).more).some_int1.unsignedShortValue, 16896);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[0]).main).insides).more).some_int2.unsignedShortValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[0]).main).insides).more).some_inst.unsignedIntValue, 66);
    XCTAssertEqualObjects(((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[1]).indicator, ([NSData dataWithBytes:"\x4D\x4D" length:2]));
    XCTAssertEqual(((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[1]).main).insides).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[1]).main).insides).more).some_int1.unsignedShortValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[1]).main).insides).more).some_int2.unsignedShortValue, 16896);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[1]).main).insides).more).some_inst.unsignedIntValue, 1107296256);
    XCTAssertEqualObjects(((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[2]).indicator, ([NSData dataWithBytes:"\x58\x58" length:2]));
    XCTAssertEqual(((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[2]).main).insides).some_int.unsignedIntValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[2]).main).insides).more).some_int1.unsignedShortValue, 66);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[2]).main).insides).more).some_int2.unsignedShortValue, 16896);
    XCTAssertEqual(((subsub_obj_sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((sub_obj_main_obj_doc_default_endian_expr_inherited_t *)((main_obj_doc_default_endian_expr_inherited_t *)((doc_default_endian_expr_inherited_t *)((default_endian_expr_inherited_t *)_r).docs[2]).main).insides).more).some_inst.unsignedIntValue, 1107296256);
}
@end
