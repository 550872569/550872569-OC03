//
//  main.m
//  08-typedef与block
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// typedef 的语法
// typedef + 定义变量的语法

// int num;             定义一个变量, 叫 num 是 int 类型的
// typedef int num;     定义了一个类型, 叫 num, 由 num 声明的变量是 int 类型

// 定义函数指针的别名
// typedef void (*pfunc)();

// typedef int * const *pType; // 作业

// typedef 定义block的语法
typedef void (^myblock)();
// 定义了一个类型叫 myblock, 由它声明的变量是一个无参数无返回值的 block 类型


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        myblock block1;
        block1 = ^{ NSLog(@"hello typedef !"); };
        
        block1();
        
        
    }
    return 0;
}
