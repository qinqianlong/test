//
//  UIImage+Swizzling.m
//  test
//
//  Created by qinqianlong on 2021/4/26.
//

#import "UIImage+Swizzling.h"
#import <objc/runtime.h>

@implementation UIImage (Swizzling)
+ (void)load{

    NSLog(@"11111111");
    Method oldMethod = class_getClassMethod(self, @selector(imageNamed:));
    Method newMethod = class_getClassMethod(self, @selector(imageWithNamed:));
    method_exchangeImplementations(oldMethod, newMethod);
}
+ (UIImage *)imageWithNamed:(NSString*)imageName
{
    UIImage *image = [self imageWithNamed:imageName];
    NSLog(@"222222222");
    return image;
}

- (void)setDownLoadURL:(NSString *)downLoadURL
{
    objc_setAssociatedObject(self, @selector(downLoadURL), downLoadURL, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSString *)downLoadURL
{
    return objc_getAssociatedObject(self, @selector(downLoadURL));
}
- (void)test1
{
    NSLog(@"本类可以调用分类的私有方法");
}
@end
