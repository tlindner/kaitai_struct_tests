// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_of_value_inst.h"

@interface enum_of_value_inst : XCTestCase
@property (strong) enum_of_value_inst_t *r;
@end

@implementation enum_of_value_inst

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [enum_of_value_inst_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_of_value_inst {
    XCTAssertEqualObjects(((enum_of_value_inst_t *)_r).pet_1, ([@"cat" KSENUMWithDictionary:enum_of_value_inst_t._animal]));
    XCTAssertEqualObjects(((enum_of_value_inst_t *)_r).pet_2, ([@"chicken" KSENUMWithDictionary:enum_of_value_inst_t._animal]));
    XCTAssertEqualObjects(((enum_of_value_inst_t *)_r).pet_3, ([@"dog" KSENUMWithDictionary:enum_of_value_inst_t._animal]));
    XCTAssertEqualObjects(((enum_of_value_inst_t *)_r).pet_4, ([@"dog" KSENUMWithDictionary:enum_of_value_inst_t._animal]));
}
@end
