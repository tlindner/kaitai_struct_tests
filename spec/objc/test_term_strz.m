// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "term_strz.h"

@interface term_strz : XCTestCase
@property (strong) term_strz_t *r;
@end

@implementation term_strz

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/term_strz.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [term_strz_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_term_strz {
    XCTAssertEqualObjects(((term_strz_t *)_r).s1, (@"foo"));
    XCTAssertEqualObjects(((term_strz_t *)_r).s2, (@"bar"));
    XCTAssertEqualObjects(((term_strz_t *)_r).s3, (@"|baz@"));
}
@end
