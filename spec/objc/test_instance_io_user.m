// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "instance_io_user.h"

@interface instance_io_user : XCTestCase
@property (strong) KSInstanceIoUser *r;
@end

@implementation instance_io_user

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/instance_io.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSInstanceIoUser initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_instance_io_user {
    XCTAssertEqual(((KSInstanceIoUser *)_r).qty_entries.unsignedIntValue, 3);
    XCTAssertEqualObjects(((KSEntry_InstanceIoUser *)((KSInstanceIoUser *)_r).entries[0]).name, (@"the"));
    XCTAssertEqualObjects(((KSEntry_InstanceIoUser *)((KSInstanceIoUser *)_r).entries[1]).name, (@"rainy"));
    XCTAssertEqualObjects(((KSEntry_InstanceIoUser *)((KSInstanceIoUser *)_r).entries[2]).name, (@"day it is"));
}
@end
