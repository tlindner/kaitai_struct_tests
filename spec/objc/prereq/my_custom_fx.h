#ifndef MY_CUSTOM_FX_H_
#define MY_CUSTOM_FX_H_

#import <Cocoa/Cocoa.h>

@interface my_custom_fx_t : NSObject

- (instancetype) initWith:(int)p_key,...;
- (NSData *)decode:(NSData *)src;

@property int key;
@property BOOL flag;
@property (strong) NSData *some_bytes;

@end

#endif  // MY_CUSTOM_FX_H_


