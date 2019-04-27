#ifndef MY_CUSTOM_FX_H_
#define MY_CUSTOM_FX_H_

#import <Cocoa/Cocoa.h>

@interface my_custom_fx_t : NSObject

- (instancetype) initWithKey:(int)p_key andFlag:(NSNumber *)p_flag withData:(NSData *)p_some_bytes;
- (NSData *)decode:(NSData *)src;

@property int key;
@property (strong) NSNumber *flag;
@property (strong) NSData *some_bytes;

@end

#endif  // MY_CUSTOM_FX_H_


