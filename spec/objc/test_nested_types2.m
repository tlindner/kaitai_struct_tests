// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nested_types2.h"

@interface nested_types2 : XCTestCase
@property (strong) KSNestedTypes2 *r;
@end

@implementation nested_types2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSNestedTypes2 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nested_types2 {
    XCTAssertEqual(((KSSubtypeB_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_at_root).value_b.charValue, 80);
    XCTAssertEqual(((KSSubtypeC_SubtypeA_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_here1).value_c.charValue, 65);
    XCTAssertEqual(((KSSubtypeD_SubtypeC_SubtypeA_NestedTypes2 *)((KSSubtypeC_SubtypeA_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_here1).typed_here).value_d.charValue, 67);
    XCTAssertEqual(((KSSubtypeCc_SubtypeA_NestedTypes2 *)((KSSubtypeC_SubtypeA_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_here1).typed_parent).value_cc.charValue, 75);
    XCTAssertEqual(((KSSubtypeB_NestedTypes2 *)((KSSubtypeC_SubtypeA_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_here1).typed_root).value_b.charValue, 45);
    XCTAssertEqual(((KSSubtypeCc_SubtypeA_NestedTypes2 *)((KSSubtypeA_NestedTypes2 *)((KSNestedTypes2 *)_r).one).typed_here2).value_cc.charValue, 49);
    XCTAssertEqual(((KSSubtypeB_NestedTypes2 *)((KSNestedTypes2 *)_r).two).value_b.charValue, -1);
}
@end
