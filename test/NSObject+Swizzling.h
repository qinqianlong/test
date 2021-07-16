//
//  NSObject+Swizzling.h
//  test
//
//  Created by qinqianlong on 2021/4/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Swizzling)
+ (void)methodSwizzlingWithOriginaSelector:(SEL)originalSelector bySwizzledSelector:(SEL)swizzledSelector;
@end

NS_ASSUME_NONNULL_END
