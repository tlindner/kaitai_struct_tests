#import <XCTest/XCTest.h>
#import "enum_0.h"

@interface enum_0 : XCTestCase
@property (strong) KSEnum0 *r;
@end

@implementation enum_0

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnum0 structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_0 {
    XCTAssertEqualObjects(self.r.pet_1, ([@"cat" KSENUMWithDictionary:KSEnum0._animal]));
    XCTAssertEqualObjects(self.r.pet_2, ([@"chicken" KSENUMWithDictionary:KSEnum0._animal]));
}
@end
