// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "type_ternary.h"

@interface type_ternary : XCTestCase
@property (strong) type_ternary_t *r;
@end

@implementation type_ternary

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/term_strz.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [type_ternary_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_type_ternary {
    XCTAssertEqual(((dummy_type_ternary_t *)((type_ternary_t *)_r).dif).value.unsignedCharValue, 101);
}
@end
