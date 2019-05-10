// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_deep.h"

@interface enum_deep : XCTestCase
@property (strong) KSEnumDeep *r;
@end

@implementation enum_deep

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnumDeep initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_deep {
    XCTAssertEqualObjects(((KSEnumDeep *)_r).pet_1, ([@"cat" KSENUMWithDictionary:KSContainer1_EnumDeep._animal]));
    XCTAssertEqualObjects(((KSEnumDeep *)_r).pet_2, ([@"hare" KSENUMWithDictionary:KSContainer2_Container1_EnumDeep._animal]));
}
@end
