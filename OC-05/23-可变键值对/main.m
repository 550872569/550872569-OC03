//
//  main.m
//  23-可变键值对
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 一般来讲, 可变键值对也是创建一个空的作为容器使用
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *dic2 = [NSMutableDictionary dictionary];
        
        // 增加键值对
        dic1[@"key"] = @"value"; // 如果没有该键, 就创建该键与值, 如果有该键, 就修改该键的值
        
        dic1[@"key"] = @"zhi";
        
        
        
        
        NSLog(@"%@", dic1);
        
    }
    return 0;
}
