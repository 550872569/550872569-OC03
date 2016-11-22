//
//  main.m
//  06-协议的修饰符号
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

@protocol Test <NSObject>

@optional // 选择的
- (void)method1;

@required // 必须(默认)
- (void)method2;


- (void)method3;

@end

@interface Person : NSObject <Test>

@end

@implementation Person
- (void)method2 {
    NSLog(@"method2");
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [Person new];
        
        
        if ([p respondsToSelector:@selector(method2)]) {
            [p method2];
        } else {
            NSLog(@"该方法不存在");
        }
    }
    return 0;
}
