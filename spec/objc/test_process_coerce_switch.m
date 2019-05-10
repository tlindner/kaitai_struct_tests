#import <XCTest/XCTest.h>
#import "process_coerce_switch.h"

@interface process_coerce_switch : XCTestCase
@property (strong) process_coerce_switch_t *r;
@end

@implementation process_coerce_switch

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/process_coerce_switch.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [process_coerce_switch_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_process_coerce_switch {
    XCTAssertEqual(_r.buf_type.unsignedCharValue, 0);
    XCTAssertEqual(_r.flag.unsignedCharValue, 0);
    XCTAssertEqualObjects([_r.buf bar], [NSData dataWithBytes:"\x41\x41\x41\x41" length:4]);
}
@end
