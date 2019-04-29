// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "process_coerce_usertype1.h"

@interface process_coerce_usertype1 : XCTestCase
@property (strong) process_coerce_usertype1_t *r;
@end

@implementation process_coerce_usertype1

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/process_coerce_bytes.bin"];
    kstream *ks = [kstream streamWithURL:dataURL];
    self.r = [process_coerce_usertype1_t structWith:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_process_coerce_usertype1 {
    XCTAssertEqual(_r.records[0].flag.unsignedCharValue, 0);
    XCTAssertEqual(_r.records[0].buf.value.unsignedIntValue, 1094795585);
    XCTAssertEqual(_r.records[1].flag.unsignedCharValue, 1);
    XCTAssertEqual(_r.records[1].buf.value.unsignedIntValue, 1111638594);
}
@end
