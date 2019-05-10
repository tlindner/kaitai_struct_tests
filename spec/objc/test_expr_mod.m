// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "expr_mod.h"

@interface expr_mod : XCTestCase
@property (strong) expr_mod_t *r;
@end

@implementation expr_mod

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [expr_mod_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_expr_mod {
    XCTAssertEqual(((expr_mod_t *)_r).int_u.unsignedIntValue, 1262698832);
    XCTAssertEqual(((expr_mod_t *)_r).int_s.intValue, -52947);
    XCTAssertEqual(((expr_mod_t *)_r).mod_pos_const.unsignedLongLongValue, 9);
    XCTAssertEqual(((expr_mod_t *)_r).mod_neg_const.unsignedLongLongValue, 4);
    XCTAssertEqual(((expr_mod_t *)_r).mod_pos_seq.unsignedLongLongValue, 5);
    XCTAssertEqual(((expr_mod_t *)_r).mod_neg_seq.unsignedLongLongValue, 2);
}
@end
