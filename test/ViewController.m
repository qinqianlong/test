//
//  ViewController.m
//  test
//
//  Created by qinqianlong on 2021/4/21.
//

#import "ViewController.h"
#import "UIViewController+Swizzling.h"
#import "UIImage+Swizzling.h"
#import "UIViewController+newMethod.h"
#import <SDKDemo/SDKDemo.h>
@interface ViewController ()
- (void)startAdd1111;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[SayLove alloc] sayLove];
    [self test1];
    
    NSMutableArray * arr = @[@16,@14].mutableCopy;
        for (int i = 0; i < arr.count; i++) {
            for (int j = i+1; j < arr.count; j++) {
                if ([arr[i] intValue] < [arr[j] intValue]) {
                    [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
                }
            }
//            [self logArr:arr];
        }
}

- (void)startAdd1111
{
    
}
@end
