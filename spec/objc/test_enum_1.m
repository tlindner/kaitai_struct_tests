// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_1.h"

@interface enum_1 : XCTestCase
@property (strong) KSEnum1 *r;
@end

@implementation enum_1

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnum1 initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_1 {
    XCTAssertEqualObjects(((KSSubmainObj_MainObj_Enum1 *)((KSMainObj_Enum1 *)((KSEnum1 *)_r).main).submain).pet_1, ([@"cat" KSENUMWithDictionary:KSMainObj_Enum1._animal]));
    XCTAssertEqualObjects(((KSSubmainObj_MainObj_Enum1 *)((KSMainObj_Enum1 *)((KSEnum1 *)_r).main).submain).pet_2, ([@"chicken" KSENUMWithDictionary:KSMainObj_Enum1._animal]));
}
@end
