#import "my_custom_fx.h"

@implementation my_custom_fx_t

- (instancetype) initWith:(int)p_key,...
{
    self = [super init];
    if (self) {
        va_list args;
        va_start(args, p_key);
        self.key = p_key;
        self.flag = va_arg(args, int); /* promoted from BOOL */
        self.some_bytes = va_arg(args, NSData*);
        va_end(args);

        self.key = self.flag ? self.key : -self.key;
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
