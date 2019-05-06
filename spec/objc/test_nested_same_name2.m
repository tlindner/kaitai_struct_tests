// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nested_same_name2.h"

@interface nested_same_name2 : XCTestCase
@property (strong) nested_same_name2_t *r;
@end

@implementation nested_same_name2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/nested_same_name2.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [nested_same_name2_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nested_same_name2 {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(version)),IntNum(66))*/
    XCTAssertEqual(((nested_same_name2_t *)_r).version.unsignedIntValue, 66);
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(main_data)),identifier(main_size)),IntNum(2))*/
    XCTAssertEqual(((main_nested_same_name2_t *)((nested_same_name2_t *)_r).main_data).main_size.intValue, 2);
    /* simpleAssert: TestAssert(Attribute(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(main_data)),identifier(foo)),identifier(data1)),List(ArrayBuffer(IntNum(17), IntNum(17), IntNum(17), IntNum(17))))*/
    XCTAssertEqualObjects(((foo_obj_main_nested_same_name2_t *)((main_nested_same_name2_t *)((nested_same_name2_t *)_r).main_data).foo).data1, ([NSData dataWithBytes:"\x11\x11\x11\x11" length:4]));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(dummy)),identifier(dummy_size)),IntNum(3))*/
    XCTAssertEqual(((dummy_obj_nested_same_name2_t *)((nested_same_name2_t *)_r).dummy).dummy_size.intValue, 3);
    /* simpleAssert: TestAssert(Attribute(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(dummy)),identifier(foo)),identifier(data2)),List(ArrayBuffer(IntNum(34), IntNum(34), IntNum(34), IntNum(34), IntNum(34), IntNum(34))))*/
    XCTAssertEqualObjects(((foo_obj_dummy_obj_nested_same_name2_t *)((dummy_obj_nested_same_name2_t *)((nested_same_name2_t *)_r).dummy).foo).data2, ([NSData dataWithBytes:"\x22\x22\x22\x22\x22\x22" length:6]));
}
@end
