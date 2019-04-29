// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "float_to_i.h"

@interface float_to_i : XCTestCase
@property (strong) float_to_i_t *r;
@end

@implementation float_to_i

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/floating_points.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [float_to_i_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_float_to_i {
    XCTAssertEqual(_r.single_value.floatValue, 0.5);
    XCTAssertEqual(_r.double_value.doubleValue, 0.25);
    XCTAssertEqual(_r.single_i.unsignedLongLongValue, 0);
    XCTAssertEqual(_r.double_i.unsignedLongLongValue, 0);
    XCTAssertEqual(_r.float1_i.unsignedLongLongValue, 1);
    XCTAssertEqual(_r.float2_i.unsignedLongLongValue, 1);
    XCTAssertEqual(_r.float3_i.unsignedLongLongValue, 1);
    XCTAssertEqual(_r.float4_i.unsignedLongLongValue, -2);
}
@end
