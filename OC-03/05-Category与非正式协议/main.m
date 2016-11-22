//
//  main.m
//  05-Category与非正式协议
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// 非正式协议, 就是一个 Category 的声明文件, 即 .h 文件
// 给一个类提供新的方法的声明, 但是没有实现部分
// Category 中方法的实现, 留给该类的子类完成

@interface NSObject (NSOExt)
- (void)testMethod;
@end


@interface Person : NSObject

@end

@implementation Person

- (void)testMethod {
    NSLog(@"子类来实现具体的方法");
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
