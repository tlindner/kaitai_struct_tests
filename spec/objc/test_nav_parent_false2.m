// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nav_parent_false2.h"

@interface nav_parent_false2 : XCTestCase
@property (strong) nav_parent_false2_t *r;
@end

@implementation nav_parent_false2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [nav_parent_false2_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nav_parent_false2 {
    XCTAssertEqual(((child_nav_parent_false2_t *)((nav_parent_false2_t *)_r).parentless).foo.unsignedCharValue, 80);
}
@end
