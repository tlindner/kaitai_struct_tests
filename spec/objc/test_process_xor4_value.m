// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "process_xor4_value.h"

@interface process_xor4_value : XCTestCase
@property (strong) process_xor4_value_t *r;
@end

@implementation process_xor4_value

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/process_xor_4.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [process_xor4_value_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_process_xor4_value {
    XCTAssertEqualObjects(_r.key, [NSData dataWithBytes:"\xEC\xBB\xA3\x14" length:4]);
    XCTAssertEqualObjects(_r.buf, [NSData dataWithBytes:"\x66\x6F\x6F\x20\x62\x61\x72" length:7]);
}
@end
