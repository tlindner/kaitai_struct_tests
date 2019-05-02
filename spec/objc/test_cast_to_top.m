// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "cast_to_top.h"

@interface cast_to_top : XCTestCase
@property (strong) cast_to_top_t *r;
@end

@implementation cast_to_top

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [cast_to_top_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_cast_to_top {
    XCTAssertEqual(((cast_to_top_t *)_r).code.unsignedCharValue, 80);
    XCTAssertEqual(((cast_to_top_t *)((cast_to_top_t *)_r).header).code.unsignedCharValue, 65);
    XCTAssertEqual(((cast_to_top_t *)((cast_to_top_t *)_r).header_casted).code.unsignedCharValue, 65);
}
@end
