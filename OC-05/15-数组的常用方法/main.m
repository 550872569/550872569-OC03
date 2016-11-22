//
//  main.m
//  15-数组的常用方法
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[ @"1", @"2", @"3", @"你好吗" ];
        // 1, count 属性, 用来活动数组中元素的个数
        // NSLog(@"%lu", arr.count);
        
        // 2, objectAtIndex 方法
        // NSString *s = [arr objectAtIndex:1];
        // NSLog(@"%@", s);
    
        // 3, 遍历
        // for (int i = 0; i < arr.count; i++) {
        //      NSString *s = [arr objectAtIndex:i];
        //      NSLog(@"%@", s);
        // }
        
        // 数组同样支持使用 C 语言的索引形式访问数组元素
        /*
        for (int i = 0; i < arr.count; i++) {
            NSLog(@"%@", arr[i]); // 下标语法
        }
        */
        
        
        // 在数组中还提供了快速获得首尾元素的属性
        // 第一个元素
        // arr[0];
        // 最后一个元素
        // arr[arr.count - 1];
        
        // arr.firstObject // 最开始的元素
        // arr.lastObject  // 最后的元素
        
        
        // 数组提供了一个方法, IndexOfObject 表示对象的索引
        NSUInteger index = [arr indexOfObject:@"4"];
        NSLog(@"%lu", index);
        
        NSLog(@"%d", index == NSNotFound);
    }
    return 0;
}
