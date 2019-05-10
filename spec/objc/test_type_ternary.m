// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "type_ternary.h"

@interface type_ternary : XCTestCase
@property (strong) KSTypeTernary *r;
@end

@implementation type_ternary

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/term_strz.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSTypeTernary initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_type_ternary {
    XCTAssertEqual(((KSDummy_TypeTernary *)((KSTypeTernary *)_r).dif).value.unsignedCharValue, 101);
}
@end
