//
//  main.m
//  05-NSNumber与NSValue
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 在 OC 中, 数组, 键值对等集合类型, 只允许存储对象. 基本数据类型无法存储
        
        // NSArray *arr = @[ @"123", @"456", 4, 5 ];
        
        // 在 OC 中基本数据类型不是对象, 但是如果需要存储该类型
        // 就需要将其转换成对象来使用
        
        // OC 中提供了一个包装对象, 将基本数据类型包装成一个对象
        
        // NSNumber
        NSNumber *num = [NSNumber numberWithInt:123];
        
        NSArray *arr = @[ @"123", @"456", num];
        
        // 包装以后的数据是否可以和原来的数据进行运算呢?
        
        int n = 123 + num.intValue;
        
        NSLog(@"%d", n);
        
        // 如果一个数字要存储到数组中, 每次都创建 NSNumber 对象太麻烦
        // 因此 OC 中提供了一个 @ 指令, 在数字前 + @ 表示 NSNumber 对象
        
        NSArray *arr1 = @[ @"123", @"456", @123];
        
        int i = [@123 intValue];
        
        
        // 如果要把变量存储到数组中
        NSArray *arr2 = @[ @"123", @"456", @(i) ];
        
        
        
    }
    return 0;
}
