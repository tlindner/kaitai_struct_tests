// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "str_pad_term_empty.h"

@interface str_pad_term_empty : XCTestCase
@property (strong) KSStrPadTermEmpty *r;
@end

@implementation str_pad_term_empty

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_pad_term_empty.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSStrPadTermEmpty structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_str_pad_term_empty {
    XCTAssertEqualObjects(((KSStrPadTermEmpty *)_r).str_pad, (@""));
    XCTAssertEqualObjects(((KSStrPadTermEmpty *)_r).str_term, (@""));
    XCTAssertEqualObjects(((KSStrPadTermEmpty *)_r).str_term_and_pad, (@""));
    XCTAssertEqualObjects(((KSStrPadTermEmpty *)_r).str_term_include, (@"@"));
}
@end
