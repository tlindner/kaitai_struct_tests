// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "switch_manual_int_size_else.h"

@interface switch_manual_int_size_else : XCTestCase
@property (strong) KSSwitchManualIntSizeElse *r;
@end

@implementation switch_manual_int_size_else

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/switch_tlv.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [KSSwitchManualIntSizeElse structWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_switch_manual_int_size_else {
    XCTAssertEqual(((KSSwitchManualIntSizeElse *)_r).chunks.count, 4);
    XCTAssertEqual(((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[0]).code.unsignedCharValue, 17);
    XCTAssertEqualObjects(((KSChunkMeta_Chunk_SwitchManualIntSizeElse *)((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[0]).body).title, (@"Stuff"));
    XCTAssertEqualObjects(((KSChunkMeta_Chunk_SwitchManualIntSizeElse *)((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[0]).body).author, (@"Me"));
    XCTAssertEqual(((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[1]).code.unsignedCharValue, 34);
    XCTAssertEqualObjects(((KSChunkDir_Chunk_SwitchManualIntSizeElse *)((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[1]).body).entries, (@[@"AAAA", @"BBBB", @"CCCC"]));
    XCTAssertEqual(((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[2]).code.unsignedCharValue, 51);
    XCTAssertEqualObjects(((KSDummy_Chunk_SwitchManualIntSizeElse *)((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[2]).body).rest, ([NSData dataWithBytes:"\x10\x20\x30\x40\x50\x60\x70\x80" length:8]));
    XCTAssertEqual(((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[3]).code.unsignedCharValue, 255);
    XCTAssertEqualObjects(((KSDummy_Chunk_SwitchManualIntSizeElse *)((KSChunk_SwitchManualIntSizeElse *)((KSSwitchManualIntSizeElse *)_r).chunks[3]).body).rest, ([NSData dataWithBytes:"" length:0]));
}
@end