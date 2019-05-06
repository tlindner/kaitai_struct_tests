// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "index_to_param_until.h"

@interface index_to_param_until : XCTestCase
@property (strong) index_to_param_until_t *r;
@end

@implementation index_to_param_until

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/index_sizes.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [index_to_param_until_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_index_to_param_until {
    XCTAssertEqual(((index_to_param_until_t *)_r).qty.unsignedIntValue, 3);
    XCTAssertEqual(((index_to_param_until_t *)_r).sizes[0].unsignedIntValue, 1);
    XCTAssertEqual(((index_to_param_until_t *)_r).sizes[1].unsignedIntValue, 8);
    XCTAssertEqual(((index_to_param_until_t *)_r).sizes[2].unsignedIntValue, 4);
    XCTAssertEqualObjects(((block_index_to_param_until_t *)((index_to_param_until_t *)_r).blocks[0]).buf, (@"A"));
    XCTAssertEqualObjects(((block_index_to_param_until_t *)((index_to_param_until_t *)_r).blocks[1]).buf, (@"BBBBBBBB"));
    XCTAssertEqualObjects(((block_index_to_param_until_t *)((index_to_param_until_t *)_r).blocks[2]).buf, (@"CCCC"));
}
@end
