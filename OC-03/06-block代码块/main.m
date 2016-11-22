//
//  main.m
//  06-block代码块
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// 在 OC 的基础上, 提供了一个 C 语言级别的成员, 代码块(block)
// 扩充了函数指针的特殊语法, 也是为了灵活的使用函数指针的概念

// 源代码 -> 二进制文件

// 在 C 语言中 函数指针 的使用有什么特点呢?
// 1> 将函数作为变量使用(作为另一个函数的参数进行传递)
/*
    for (int i = 0; i < length - 1; i++) {
        for (int j = 0; j < length - 1 - i; j++) {
 
            // if (arr[j] > arr[j+1]) {
            if ( compare2(arr[j], arr[j+1]) )
 
                交换
            }
        }
    }
 
 
    int compare1(int i, int j) {
        return i > j;
    }
 
    int compare2(int i, int j) {
        return i < j;
    }
 
    // ==============
    int arr[] = { 1, 2, 4, 5, 3, 7, 6 };
    
    // 1> 代码
    // 2> 函数
    sort(arr, length);
 
    void sort(int arr[], int length) {
        for (int i = 0; i < length - 1; i++) {
            for (int j = 0; j < length - 1 - i; j++) {
 
                if (arr[j] > arr[j+1]) {
                    交换
                }
            }
        }
    }
 
    // 扩展
    void sort(int arr[], int length, 带有两个int参数返回int的函数指针cmp) {
        for ...
            for ...
                if (cmp(arr[j], arr[j+1])) {
                    ...
                }
    }
 */

// 2> 实现回调函数机制



// 2, block
//  block 是为了完善 函数指针 的 一个技术
//  block 可以将一段代码块(就是花括号)当做一个函数进行执行

// 类比的方式看 block 的语法
// 1> 函数指针的定义
//     void (*pfunc)();
// 2> block的定义(无参数无返回值)
//     void (^myBlock)();

// 定义 block 就是为了绑定代码
// 1> 函数指针
//     pfunc = 函数名;
// 2> block
//     myBlock = ^{ 语句 };

// 调用
//  1> 函数指针
//     pfunc();
//  2> block
//     myBlock();




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        void (^myBlock)();   // 定义了一个无参数无返回值的 block 变量
        
        myBlock = ^{
            
            NSLog(@"你好, 我是 block");
            
            NSLog(@"可以包含多条语句");
            
            NSLog(@"还可以有换行");
        };
        // 给 block 绑定一段代码(可以执行)
        
        NSLog(@"test1");
        
        // 调用
        myBlock();
        
        NSLog(@"test2");
        
    }
    return 0;
}

















