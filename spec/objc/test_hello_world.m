// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "hello_world.h"

@interface hello_world : XCTestCase
@property (strong) hello_world_t *r;
@end

@implementation hello_world

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [hello_world_t initialize:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_hello_world {
    /* simpleAssert: TestAssert(Attribute(Name(identifier(q1w2e3)),identifier(one)),IntNum(80))*/
    XCTAssertEqual(((hello_world_t *)_r).one.unsignedCharValue, 80);
}
@end
