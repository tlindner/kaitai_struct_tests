// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "enum_1.h"

@interface enum_1 : XCTestCase
@property (strong) enum_1_t *r;
@end

@implementation enum_1

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [enum_1_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_enum_1 {
    XCTAssertEqualObjects(((submain_obj_main_obj_enum_1_t *)((main_obj_enum_1_t *)((enum_1_t *)_r).main).submain).pet_1, ([@"cat" KSENUMWithDictionary:main_obj_enum_1_t._animal]));
    XCTAssertEqualObjects(((submain_obj_main_obj_enum_1_t *)((main_obj_enum_1_t *)((enum_1_t *)_r).main).submain).pet_2, ([@"chicken" KSENUMWithDictionary:main_obj_enum_1_t._animal]));
}
@end
