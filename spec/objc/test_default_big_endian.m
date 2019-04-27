// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "default_big_endian.h"

@interface default_big_endian : XCTestCase
@property (strong) default_big_endian_t *r;
@end

@implementation default_big_endian

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/enum_0.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [default_big_endian_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_default_big_endian {
    XCTAssertEqual(_r.one.unsignedIntValue, 117440512);
}
@end
