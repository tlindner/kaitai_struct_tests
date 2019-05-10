// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "default_endian_mod.h"

@interface default_endian_mod : XCTestCase
@property (strong) default_endian_mod_t *r;
@end

@implementation default_endian_mod

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [default_endian_mod_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_default_endian_mod {
    XCTAssertEqual(((main_obj_default_endian_mod_t *)((default_endian_mod_t *)_r).main).one.intValue, 1262698832);
    XCTAssertEqual(((subnest_main_obj_default_endian_mod_t *)((main_obj_default_endian_mod_t *)((default_endian_mod_t *)_r).main).nest).two.intValue, -52947);
    XCTAssertEqual(((subnest_be_main_obj_default_endian_mod_t *)((main_obj_default_endian_mod_t *)((default_endian_mod_t *)_r).main).nest_be).two.intValue, 1346454347);
}
@end
