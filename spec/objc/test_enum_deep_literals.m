// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_deep_literals.h"

@interface enum_deep_literals : XCTestCase
@property (strong) KSEnumDeepLiterals *r;
@end

@implementation enum_deep_literals

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSEnumDeepLiterals initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_deep_literals {
    XCTAssertEqual(((KSEnumDeepLiterals *)_r).is_pet_1_ok.boolValue, YES);
    XCTAssertEqual(((KSEnumDeepLiterals *)_r).is_pet_2_ok.boolValue, YES);
}
@end
