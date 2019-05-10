// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "process_xor_const.h"

@interface process_xor_const : XCTestCase
@property (strong) KSProcessXorConst *r;
@end

@implementation process_xor_const

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/process_xor_1.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSProcessXorConst structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_process_xor_const {
    XCTAssertEqual(((KSProcessXorConst *)_r).key.unsignedCharValue, 255);
    XCTAssertEqualObjects(((KSProcessXorConst *)_r).buf, ([NSData dataWithBytes:"\x66\x6F\x6F\x20\x62\x61\x72" length:7]));
}
@end
