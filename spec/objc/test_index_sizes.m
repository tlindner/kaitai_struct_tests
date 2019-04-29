// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "index_sizes.h"

@interface index_sizes : XCTestCase
@property (strong) index_sizes_t *r;
@end

@implementation index_sizes

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/index_sizes.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [index_sizes_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_index_sizes {
    XCTAssertEqual(_r.qty.unsignedIntValue, 3);
    XCTAssertEqual(_r.sizes[0].unsignedIntValue, 1);
    XCTAssertEqual(_r.sizes[1].unsignedIntValue, 8);
    XCTAssertEqual(_r.sizes[2].unsignedIntValue, 4);
    XCTAssertEqualObjects(_r.bufs[0], @"A");
    XCTAssertEqualObjects(_r.bufs[1], @"BBBBBBBB");
    XCTAssertEqualObjects(_r.bufs[2], @"CCCC");
}
@end
