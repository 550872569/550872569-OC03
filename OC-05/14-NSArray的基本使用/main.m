//
//  main.m
//  14-NSArray的基本使用
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

// 数组的概念
// 1, C 语言的数组不方便存储对象
// 2, C 语言数组不是面向对象的, 缺少强大的方法
// 3, C 语言的数组是定长的数组, OC 中提供了可变长度的数组

// NSArray  不可变数组
// NSMutableArray   可变数组



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1, 创建的方法
        // 1> 构造方法
        /*
        NSArray *arr = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", nil];
        // 此时就得到一个数组, 并且里面的元素为三个字符串
        // 打印数组
        NSLog(@"%@", arr);
        // 构造方法中的 nil 表示数组的结束
        
        NSArray *arr1 = [NSArray arrayWithObjects:@"1", nil];
        */
        
        
        // 2> 苹果提供了数组的字面量
        // 语法: @[ ... ];
        /*
        NSArray *arr = @[ @"a", @"b", @"c", @"我" ];
        NSLog(@"%@", arr);
        */
        
        
        // 3> 从文件中创建数组
        //
        // NSArray *arr = @[ @"a", @"b", @"c", @"我" ];
        // [arr writeToFile:@"/Users/apple/Desktop/arr.txt" atomically:YES];
        
        NSArray *arr = [NSArray arrayWithContentsOfFile:@"/Users/apple/Desktop/arr.txt"];
        
        NSLog(@"%@", arr);
        
        
        
    }
    return 0;
}









