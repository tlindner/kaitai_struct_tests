// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "str_pad_term.h"

@interface str_pad_term : XCTestCase
@property (strong) KSStrPadTerm *r;
@end

@implementation str_pad_term

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_pad_term.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSStrPadTerm structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_str_pad_term {
    XCTAssertEqualObjects(((KSStrPadTerm *)_r).str_pad, (@"str1"));
    XCTAssertEqualObjects(((KSStrPadTerm *)_r).str_term, (@"str2foo"));
    XCTAssertEqualObjects(((KSStrPadTerm *)_r).str_term_and_pad, (@"str+++3bar+++"));
    XCTAssertEqualObjects(((KSStrPadTerm *)_r).str_term_include, (@"str4baz@"));
}
@end
