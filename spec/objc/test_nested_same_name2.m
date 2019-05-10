// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nested_same_name2.h"

@interface nested_same_name2 : XCTestCase
@property (strong) KSNestedSameName2 *r;
@end

@implementation nested_same_name2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/nested_same_name2.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSNestedSameName2 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nested_same_name2 {
    XCTAssertEqual(((KSNestedSameName2 *)_r).version.unsignedIntValue, 66);
    XCTAssertEqual(((KSMain_NestedSameName2 *)((KSNestedSameName2 *)_r).main_data).main_size.intValue, 2);
    XCTAssertEqualObjects(((KSFooObj_Main_NestedSameName2 *)((KSMain_NestedSameName2 *)((KSNestedSameName2 *)_r).main_data).foo).data1, ([NSData dataWithBytes:"\x11\x11\x11\x11" length:4]));
    XCTAssertEqual(((KSDummyObj_NestedSameName2 *)((KSNestedSameName2 *)_r).dummy).dummy_size.intValue, 3);
    XCTAssertEqualObjects(((KSFooObj_DummyObj_NestedSameName2 *)((KSDummyObj_NestedSameName2 *)((KSNestedSameName2 *)_r).dummy).foo).data2, ([NSData dataWithBytes:"\x22\x22\x22\x22\x22\x22" length:6]));
}
@end
