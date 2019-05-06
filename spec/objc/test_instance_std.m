// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "instance_std.h"

@interface instance_std : XCTestCase
@property (strong) instance_std_t *r;
@end

@implementation instance_std

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/str_encodings.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [instance_std_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_instance_std {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(header)),Str(Some ))*/
    XCTAssertEqualObjects(((instance_std_t *)_r).header, (@"Some "));
}
@end
