// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "docstrings_docref_multi.h"

@interface docstrings_docref_multi : XCTestCase
@property (strong) docstrings_docref_multi_t *r;
@end

@implementation docstrings_docref_multi

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [docstrings_docref_multi_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_docstrings_docref_multi {
}
@end
