// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "repeat_n_strz.h"

@interface repeat_n_strz : XCTestCase
@property (strong) repeat_n_strz_t *r;
@end

@implementation repeat_n_strz

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/repeat_n_strz.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [repeat_n_strz_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_repeat_n_strz {
    XCTAssertEqual(((repeat_n_strz_t *)_r).qty.unsignedIntValue, 2);
    XCTAssertEqualObjects(((repeat_n_strz_t *)_r).lines, (@[@"foo", @"bar"]));
}
@end
