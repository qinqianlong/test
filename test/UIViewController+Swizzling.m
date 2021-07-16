//
//  UIViewController+Swizzling.m
//  test
//
//  Created by qinqianlong on 2021/4/26.
//

#import "UIViewController+Swizzling.h"
#import "NSObject+Swizzling.h"
@interface UIViewController(Swizzling)
- (void)test1;
@end

@implementation UIViewController (Swizzling)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [UIViewController methodSwizzlingWithOriginaSelector:@selector(viewDidAppear:) bySwizzledSelector:@selector(my_ViewDidAppear:)];
    });
}

- (void) my_ViewDidAppear:(BOOL)animated{
    [self my_ViewDidAppear:YES];
    NSLog(@"-----------替换成功");
}
- (void)test1
{
    NSLog(@"本类可以调用分类的私有方法");
}
@end
