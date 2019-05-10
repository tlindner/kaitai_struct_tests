// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "position_abs.h"

@interface position_abs : XCTestCase
@property (strong) KSPositionAbs *r;
@end

@implementation position_abs

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/position_abs.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSPositionAbs initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_position_abs {
    XCTAssertEqual(((KSPositionAbs *)_r).index_offset.unsignedIntValue, 32);
    XCTAssertEqualObjects(((KSIndexObj_PositionAbs *)((KSPositionAbs *)_r).index).entry, (@"foo"));
}
@end
