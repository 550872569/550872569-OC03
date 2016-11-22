//
//  main.m
//  07-block的使用注意事项
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. 定义与初始化
        void (^myblock1)() = ^{  };
        
        void (^myblock2)() = ^{ NSLog(@"hello block!"); };
        
        
        // 混码大赛
        void
        (
         ^
         myblock3
         )
        (
        )
        =
        ^
        {
            NSLog(@"12345");
        };
        myblock3();
        
        // 注意:
        // 1> block 赋值是一个表达式, 因此需要有分号
        // 2> 代码块中可以包含多个表达式, 因此需要有分号
        // 3> 基于 C 语言的自由格式, 可以随意的换行. 但是不应该在关键字处换行
        
        
        // 2, 定义的类型
        void (^myblock4)();
        
        // void (^)() myblock5 = ^{NSLog(@"123");};
        
        
    }
    return 0;
}


















