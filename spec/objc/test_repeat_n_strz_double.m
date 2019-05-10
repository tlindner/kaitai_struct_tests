// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "repeat_n_strz_double.h"

@interface repeat_n_strz_double : XCTestCase
@property (strong) KSRepeatNStrzDouble *r;
@end

@implementation repeat_n_strz_double

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/repeat_n_strz.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSRepeatNStrzDouble structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_repeat_n_strz_double {
    XCTAssertEqual(((KSRepeatNStrzDouble *)_r).qty.unsignedIntValue, 2);
    XCTAssertEqualObjects(((KSRepeatNStrzDouble *)_r).lines1, (@[@"foo"]));
    XCTAssertEqualObjects(((KSRepeatNStrzDouble *)_r).lines2, (@[@"bar"]));
}
@end
