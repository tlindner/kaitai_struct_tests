// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "index_to_param_until.h"

@interface index_to_param_until : XCTestCase
@property (strong) KSIndexToParamUntil *r;
@end

@implementation index_to_param_until

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/index_sizes.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSIndexToParamUntil initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_index_to_param_until {
    XCTAssertEqual(((KSIndexToParamUntil *)_r).qty.unsignedIntValue, 3);
    XCTAssertEqual(((KSIndexToParamUntil *)_r).sizes[0].unsignedIntValue, 1);
    XCTAssertEqual(((KSIndexToParamUntil *)_r).sizes[1].unsignedIntValue, 8);
    XCTAssertEqual(((KSIndexToParamUntil *)_r).sizes[2].unsignedIntValue, 4);
    XCTAssertEqualObjects(((KSBlock_IndexToParamUntil *)((KSIndexToParamUntil *)_r).blocks[0]).buf, (@"A"));
    XCTAssertEqualObjects(((KSBlock_IndexToParamUntil *)((KSIndexToParamUntil *)_r).blocks[1]).buf, (@"BBBBBBBB"));
    XCTAssertEqualObjects(((KSBlock_IndexToParamUntil *)((KSIndexToParamUntil *)_r).blocks[2]).buf, (@"CCCC"));
}
@end
