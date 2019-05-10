// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nav_root.h"

@interface nav_root : XCTestCase
@property (strong) KSNavRoot *r;
@end

@implementation nav_root

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/nav.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSNavRoot initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nav_root {
    XCTAssertEqual(((KSHeaderObj_NavRoot *)((KSNavRoot *)_r).header).qty_entries.unsignedIntValue, 2);
    XCTAssertEqual(((KSHeaderObj_NavRoot *)((KSNavRoot *)_r).header).filename_len.unsignedIntValue, 8);
    XCTAssertEqual(((KSIndexObj_NavRoot *)((KSNavRoot *)_r).index).entries.count, 2);
    XCTAssertEqualObjects(((KSEntry_NavRoot *)((KSIndexObj_NavRoot *)((KSNavRoot *)_r).index).entries[0]).filename, (@"FIRST___"));
    XCTAssertEqualObjects(((KSEntry_NavRoot *)((KSIndexObj_NavRoot *)((KSNavRoot *)_r).index).entries[1]).filename, (@"SECOND__"));
}
@end
