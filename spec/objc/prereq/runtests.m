#import <XCTest/XCTestObservationCenter.h>

// From https://stackoverflow.com/a/41527537

// Define my Observation object -- I only have to do this in one place
@interface KaiTaiObjcTestObservation : NSObject<XCTestObservation>
@property (assign, nonatomic) NSUInteger testsFailed;
@property (assign, nonatomic) BOOL testPassed;
@property (strong) NSXMLDocument *doc;
@property (strong) NSXMLElement *current_case;
@end

@implementation KaiTaiObjcTestObservation

- (instancetype)init {
    self = [super init];
    self.testsFailed = 0;
    NSXMLElement *node = [NSXMLNode elementWithName:@"TestSuite"];
    NSXMLNode *attribue = [NSXMLNode attributeWithName:@"name" stringValue:@"Objective-C / Cocoa test units for Kaitai Struct"];
    [node addAttribute:attribue];
    NSXMLElement *root_element = [[NSXMLElement alloc] initWithName:@"TestLog"];
    self.doc = [[NSXMLDocument alloc] initWithRootElement:root_element];
    [root_element addChild:node];
    return self;
}

- (void)testSuiteWillStart:(XCTestSuite *)testSuite {
	if( !([[testSuite name] isEqualToString:@"All tests"] || [[testSuite name] isEqualToString:@"bin"])) {
		NSXMLElement *test_suite = (NSXMLElement *)[[self.doc rootElement] childAtIndex:0];
		self.current_case = [NSXMLNode elementWithName:@"TestCase"];
		NSXMLNode *attribue = [NSXMLNode attributeWithName:@"name" stringValue:[testSuite name]];
		[self.current_case addAttribute:attribue];
		attribue = [NSXMLNode attributeWithName:@"file" stringValue:@""];
		[self.current_case addAttribute:attribue];
		attribue = [NSXMLNode attributeWithName:@"line" stringValue:@""];
		[self.current_case addAttribute:attribue];
		[test_suite addChild: self.current_case];
	}
}


- (void)testCaseWillStart:(XCTestSuite *)testCase {
	self.testPassed = YES; // Assume it will pass */
}

- (void)testCase:(XCTestCase *)testCase didFailWithDescription:(NSString *)description inFile:(NSString *)filePath atLine:(NSUInteger)lineNumber {
	NSXMLElement *current_info = [NSXMLNode elementWithName:@"Info" stringValue:description];
	NSXMLNode *attribue = [NSXMLNode attributeWithName:@"file" stringValue:filePath];
	[current_info addAttribute:attribue];
	attribue = [NSXMLNode attributeWithName:@"line" stringValue:@(lineNumber).stringValue];
	[current_info addAttribute:attribue];
	[self.current_case addChild: current_info];
	self.testPassed = NO;  /* https://webcomicname.com/post/148007470604 */
}

- (void)testCaseDidFinish:(XCTestCase *)testCase
{
	if (self.testPassed) {
		NSXMLElement *current_info = [NSXMLNode elementWithName:@"Info" stringValue:@"has passed"];
		NSXMLNode *attribue = [NSXMLNode attributeWithName:@"file" stringValue:@""];
		[current_info addAttribute:attribue];
		attribue = [NSXMLNode attributeWithName:@"line" stringValue:@""];
		[current_info addAttribute:attribue];
		[self.current_case addChild:current_info];
	}
}

@end

int main(int argc, char** argv) {
	if( argc < 2 ) {
		NSLog(@"runtests.m: single argument required: path to XML result file.");
		return 1;
	}

    XCTestObservationCenter *center = [XCTestObservationCenter sharedTestObservationCenter];
    KaiTaiObjcTestObservation *observer = [KaiTaiObjcTestObservation new];
    [center addTestObserver:observer];

	XCTestSuite *suite = [XCTestSuite defaultTestSuite];
	[suite runTest];

    int rval = observer.testsFailed > 0 ? 1 : 0;

	NSData *xml_contents = [observer.doc XMLDataWithOptions:NSXMLNodePrettyPrint];
	[xml_contents writeToFile:[[NSString alloc] initWithCString:argv[1] encoding:NSUTF8StringEncoding] atomically:NO];

    return rval;
}
