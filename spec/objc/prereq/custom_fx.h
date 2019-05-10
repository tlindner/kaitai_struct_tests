#ifndef CUSTOM_FX_H_
#define CUSTOM_FX_H_

#import <Cocoa/Cocoa.h>

@interface custom_fx : NSObject

- (instancetype) initWith:(int)p_key, ...;
- (NSData *)decode:(NSData *)src;

@property int key;

@end


#endif  // CUSTOM_FX_H_
