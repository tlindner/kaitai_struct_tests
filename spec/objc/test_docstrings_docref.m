// Autogenerated from KST: please remove this line if doing any edits by hand!

#import <XCTest/XCTest.h>
#import "docstrings_docref.h"

@interface docstrings_docref : XCTestCase
@property (strong) docstrings_docref_t *r;
@end

@implementation docstrings_docref

- (void)setUp {
    [super setUp];
    NSURL *dataURL = [NSURL fileURLWithPath:@"src/fixed_struct.bin"];
    KSStream *ks = [KSStream streamWithURL:dataURL];
    self.r = [docstrings_docref_t initWithStream:ks];
}

- (void)tearDown {
    [super tearDown];
    self.r = nil;
}

- (void)test_docstrings_docref {
}
@end
