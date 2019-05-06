// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "str_encodings_default.h"

@interface str_encodings_default : XCTestCase
@property (strong) str_encodings_default_t *r;
@end

@implementation str_encodings_default

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_encodings.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [str_encodings_default_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_str_encodings_default {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(str1)),Str(Some ASCII))*/
    XCTAssertEqualObjects(((str_encodings_default_t *)_r).str1, (@"Some ASCII"));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(rest)),identifier(str2)),Str(こんにちは))*/
    XCTAssertEqualObjects(((subtype_str_encodings_default_t *)((str_encodings_default_t *)_r).rest).str2, (@"\u3053\u3093\u306b\u3061\u306f"));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(rest)),identifier(str3)),Str(こんにちは))*/
    XCTAssertEqualObjects(((subtype_str_encodings_default_t *)((str_encodings_default_t *)_r).rest).str3, (@"\u3053\u3093\u306b\u3061\u306f"));
    /* simpleAssert: TestAssert(Attribute(Attribute(Name(identifier(q1w2e3)),identifier(rest)),identifier(str4)),Str(░▒▓))*/
    XCTAssertEqualObjects(((subtype_str_encodings_default_t *)((str_encodings_default_t *)_r).rest).str4, (@"\u2591\u2592\u2593"));
}
@end
