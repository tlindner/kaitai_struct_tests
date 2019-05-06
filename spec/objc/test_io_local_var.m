// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "io_local_var.h"

@interface io_local_var : XCTestCase
@property (strong) io_local_var_t *r;
@end

@implementation io_local_var

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/full256.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [io_local_var_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_io_local_var {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(skip)),List(ArrayBuffer(IntNum(0), IntNum(1), IntNum(2), IntNum(3), IntNum(4), IntNum(5), IntNum(6), IntNum(7), IntNum(8), IntNum(9), IntNum(10), IntNum(11), IntNum(12), IntNum(13), IntNum(14), IntNum(15), IntNum(16), IntNum(17), IntNum(18), IntNum(19))))*/
    XCTAssertEqualObjects(((io_local_var_t *)_r).skip, ([NSData dataWithBytes:"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13" length:20]));
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(followup)),IntNum(20))*/
    XCTAssertEqual(((io_local_var_t *)_r).followup.unsignedCharValue, 20);
}
@end
