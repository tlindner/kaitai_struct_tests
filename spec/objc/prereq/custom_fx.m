#import "custom_fx.h"

@implementation custom_fx

- (instancetype) initWith:(int)p_key, ...
{
    self = [super init];
    if (self) {
        va_list args;
        va_start(args, p_key);
        self.key = p_key;
        va_end(args);
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
