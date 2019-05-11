// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "str_encodings.h"

@interface str_encodings : XCTestCase
@property (strong) KSStrEncodings *r;
@end

@implementation str_encodings

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_encodings.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSStrEncodings structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_str_encodings {
    XCTAssertEqualObjects(((KSStrEncodings *)_r).str1, (@"Some ASCII"));
    XCTAssertEqualObjects(((KSStrEncodings *)_r).str2, (@"\u3053\u3093\u306b\u3061\u306f"));
    XCTAssertEqualObjects(((KSStrEncodings *)_r).str3, (@"\u3053\u3093\u306b\u3061\u306f"));
    XCTAssertEqualObjects(((KSStrEncodings *)_r).str4, (@"\u2591\u2592\u2593"));
}
@end