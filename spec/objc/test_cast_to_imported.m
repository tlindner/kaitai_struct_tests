// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "cast_to_imported.h"

@interface cast_to_imported : XCTestCase
@property (strong) KSCastToImported *r;
@end

@implementation cast_to_imported

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSCastToImported initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_cast_to_imported {
    XCTAssertEqual(((KSHelloWorld *)((KSCastToImported *)_r).one).one.unsignedCharValue, 80);
    XCTAssertEqual(((KSHelloWorld *)((KSCastToImported *)_r).one_casted).one.unsignedCharValue, 80);
}
@end
