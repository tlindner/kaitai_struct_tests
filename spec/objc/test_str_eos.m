// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "str_eos.h"

@interface str_eos : XCTestCase
@property (strong) str_eos_t *r;
@end

@implementation str_eos

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/term_strz.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [str_eos_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_str_eos {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(str)),Str(foo|bar|baz@))*/
    XCTAssertEqualObjects(((str_eos_t *)_r).str, (@"foo|bar|baz@"));
}
@end
