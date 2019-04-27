#import "custom_fx.h"

@implementation custom_fx_h

- (instancetype) initWithKey:(int)p_key andFlag:(NSNumber *)p_flag withData:(NSData *)p_some_bytes
{
    self = [super init];
    if (self) {
        self.key = p_key;
        self.flag = p_flag;
        self.some_bytes = p_some_bytes;
    }
    return self;
}

- (NSData *)decode:(NSData *)src
{
	NSMutableData *before = [NSMutableData dataWithBytes:"_" length:1];
	NSData *after = [NSData dataWithBytes:"_" length:1];

	[before appendData:src];
	[before appendData:after];

	return before;
}

@end
