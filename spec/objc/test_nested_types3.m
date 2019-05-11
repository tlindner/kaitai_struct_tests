// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nested_types3.h"

@interface nested_types3 : XCTestCase
@property (strong) KSNestedTypes3 *r;
@end

@implementation nested_types3

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSNestedTypes3 structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nested_types3 {
    XCTAssertEqual(((KSSubtypeCc_SubtypeA_NestedTypes3 *)((KSNestedTypes3 *)_r).a_cc).value_cc.charValue, 80);
    XCTAssertEqual(((KSSubtypeD_SubtypeC_SubtypeA_NestedTypes3 *)((KSNestedTypes3 *)_r).a_c_d).value_d.charValue, 65);
    XCTAssertEqual(((KSSubtypeB_NestedTypes3 *)((KSNestedTypes3 *)_r).b).value_b.charValue, 67);
    XCTAssertEqual(((KSSubtypeCc_SubtypeA_NestedTypes3 *)((KSSubtypeB_NestedTypes3 *)((KSNestedTypes3 *)_r).b).a_cc).value_cc.charValue, 75);
    XCTAssertEqual(((KSSubtypeD_SubtypeC_SubtypeA_NestedTypes3 *)((KSSubtypeB_NestedTypes3 *)((KSNestedTypes3 *)_r).b).a_c_d).value_d.charValue, 45);
}
@end