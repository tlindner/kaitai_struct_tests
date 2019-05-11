// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "io_local_var.h"

@interface io_local_var : XCTestCase
@property (strong) KSIoLocalVar *r;
@end

@implementation io_local_var

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/full256.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSIoLocalVar structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_io_local_var {
    XCTAssertEqualObjects(((KSIoLocalVar *)_r).skip, ([NSData dataWithBytes:"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13" length:20]));
    XCTAssertEqual(((KSIoLocalVar *)_r).followup.unsignedCharValue, 20);
}
@end