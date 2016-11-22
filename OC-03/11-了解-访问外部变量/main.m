//
//  main.m
//  11-了解-访问外部变量
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// 根据 C 语言变量作用域规则, 在内部作用域允许访问外部作用域的变量


int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        int num = 123;
        
        {
            
            NSLog(@"%d", num);
        
            int num1 = 456;
        }
        
        // NSLog(@"%d", num1);
    }
    return 0;
}

int main2(int argc, const char * argv[]) {
    @autoreleasepool {
        int num = 123;
        
        void (^myblock)() = ^{
            // 内部作用域
            NSLog(@"%d", num);
        };
        
        myblock();
    }
    return 0;
}


// 在 block 中允许访问外部的变量, 但是并非访问的外部变量
// 而是在编译的过程中, 编译器将该变量拷贝了一份到堆区. 然后
// block 访问堆区的该变量.

// 该变量默认不允许修改

// 如果在变量的定义过程加上 __block 修饰, 就可以修改
typedef void (^block)();

block func() {
    __block int i = 123456;
    
    NSLog(@"func: &i = %p", &i);
    
    return ^{
        NSLog(@"%d", i);
        i = 456;
        NSLog(@"block:&i = %p", &i);
        NSLog(@"%d", i);
    };
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^myblock)() = func();
        
        // 此时还可以访问 i 么?
        myblock();
    }
    return 0;
}









