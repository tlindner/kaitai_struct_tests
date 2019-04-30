// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "bcd_user_type_le.h"

@interface bcd_user_type_le : XCTestCase
@property (strong) bcd_user_type_le_t *r;
@end

@implementation bcd_user_type_le

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/bcd_user_type_le.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [bcd_user_type_le_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_bcd_user_type_le {
    XCTAssertEqual(_r.ltr.as_int.unsignedLongLongValue, 12345678);
    XCTAssertEqualObjects(_r.ltr.as_str, @"12345678");
    XCTAssertEqual(_r.rtl.as_int.unsignedLongLongValue, 87654321);
    XCTAssertEqualObjects(_r.rtl.as_str, @"87654321");
    XCTAssertEqual(_r.leading_zero_ltr.as_int.unsignedLongLongValue, 123456);
    XCTAssertEqualObjects(_r.leading_zero_ltr.as_str, @"00123456");
}
@end
