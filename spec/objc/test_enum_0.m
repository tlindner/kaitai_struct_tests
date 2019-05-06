#import <XCTest/XCTest.h>
#import "enum_0.h"

@interface enum_0 : XCTestCase
@property (strong) enum_0_t *r;
@end

@implementation enum_0

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [enum_0_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_0 {
    XCTAssertEqualObjects(self.r.pet_1, ([@"cat" KSENUMWithDictionary:enum_0_t._animal]));
    XCTAssertEqualObjects(self.r.pet_2, ([@"chicken" KSENUMWithDictionary:enum_0_t._animal]));
}
@end
