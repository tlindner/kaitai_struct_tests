// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "process_custom.h"

@interface process_custom : XCTestCase
@property (strong) process_custom_t *r;
@end

@implementation process_custom

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/process_rotate.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [process_custom_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_process_custom {
    XCTAssertEqualObjects(((process_custom_t *)_r).buf1, ([NSData dataWithBytes:"\x10\xB3\x94\x94\xF4" length:5]));
    XCTAssertEqualObjects(((process_custom_t *)_r).buf2, ([NSData dataWithBytes:"\x5F\xBA\x7B\x93\x63\x23\x5F" length:7]));
    XCTAssertEqualObjects(((process_custom_t *)_r).buf3, ([NSData dataWithBytes:"\x29\x33\xB1\x38\xB1" length:5]));
}
@end
