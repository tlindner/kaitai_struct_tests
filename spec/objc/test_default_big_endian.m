// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "default_big_endian.h"

@interface default_big_endian : XCTestCase
@property (strong) KSDefaultBigEndian *r;
@end

@implementation default_big_endian

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSDefaultBigEndian structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_default_big_endian {
    XCTAssertEqual(((KSDefaultBigEndian *)_r).one.unsignedIntValue, 117440512);
}
@end
