// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_negative.h"

@interface enum_negative : XCTestCase
@property (strong) KSEnumNegative *r;
@end

@implementation enum_negative

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_negative.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnumNegative initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_negative {
    XCTAssertEqualObjects(((KSEnumNegative *)_r).f1, ([@"negative_one" KSENUMWithDictionary:KSEnumNegative._constants]));
    XCTAssertEqualObjects(((KSEnumNegative *)_r).f2, ([@"positive_one" KSENUMWithDictionary:KSEnumNegative._constants]));
}
@end
