// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "repeat_eos_bit.h"

@interface repeat_eos_bit : XCTestCase
@property (strong) repeat_eos_bit_t *r;
@end

@implementation repeat_eos_bit

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [repeat_eos_bit_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_repeat_eos_bit {
    XCTAssertEqual(((repeat_eos_bit_t *)_r).nibbles.count, 16);
}
@end
