#import "my_custom_fx.h"

@implementation my_custom_fx_t

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
	int len = src.length;
	char *dst_buffer = malloc(len);
	const char *src_buffer = src.bytes;

	for (int i=0; i <len; i++) {
		dst_buffer[i] = src_buffer[i] + self.key;
	}

	return [NSData dataWithBytesNoCopy:dst_buffer length: len];
}

@end
