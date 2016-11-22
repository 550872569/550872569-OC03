//
//  main.m
//  16-数组的遍历
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>


// 除了可以使用 for 循环来遍历数组外, 可以使用 for-in 循环
// 和 block 来进行遍历

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[ @"1", @"2", @"4", @"5", @"hello"];
        
        // 1, for-in
        // 语法
        /*
        for (临时变量 in 数组) {
            使用临时变量访问结果
        }
        */
        
        /*
        for (NSString *s in arr) {
            NSLog(@"%@", s);
            
            // break;
        }
        */
        
        
        
        
        // block 循环
        // 语法
        [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            // obj 表示当前循环的临时变量, 与 for-in 中的临时变量的含义相同
            // idx 当前下标, 好比 for 循环中的 i
            // stop 表示是否停止, 与 break 相同
            
            NSLog(@"%lu----%@-----%d", idx, obj, obj == arr[idx]);
            
            if (idx == 3) {
                // *stop = YES;
            }
        }];
        
        
    }
    return 0;
}
