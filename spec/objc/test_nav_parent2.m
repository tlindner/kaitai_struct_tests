// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "nav_parent2.h"

@interface nav_parent2 : XCTestCase
@property (strong) KSNavParent2 *r;
@end

@implementation nav_parent2

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/nav_parent2.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSNavParent2 structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_nav_parent2 {
    XCTAssertEqual(((KSNavParent2 *)_r).ofs_tags.unsignedIntValue, 8);
    XCTAssertEqual(((KSNavParent2 *)_r).num_tags.unsignedIntValue, 2);
    XCTAssertEqualObjects(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[0]).name, (@"RAHC"));
    XCTAssertEqual(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[0]).ofs.unsignedIntValue, 32);
    XCTAssertEqual(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[0]).num_items.unsignedIntValue, 3);
    XCTAssertEqualObjects(((KSTagChar_Tag_NavParent2 *)((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[0]).tag_content).content, (@"foo"));
    XCTAssertEqualObjects(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[1]).name, (@"RAHC"));
    XCTAssertEqual(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[1]).ofs.unsignedIntValue, 35);
    XCTAssertEqual(((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[1]).num_items.unsignedIntValue, 6);
    XCTAssertEqualObjects(((KSTagChar_Tag_NavParent2 *)((KSTag_NavParent2 *)((KSNavParent2 *)_r).tags[1]).tag_content).content, (@"barbaz"));
}
@end