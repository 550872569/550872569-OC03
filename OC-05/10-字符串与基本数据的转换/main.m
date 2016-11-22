//
//  main.m
//  10-字符串与基本数据的转换
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 字符串提供了一系列的 "类型Value" 方法
        NSString *s1 = @"123";
        // int i = [s1 intValue];
        int i = s1.intValue; // isNum -> if (s.isNum) { ...
        NSLog(@"%d", i+1);
        

    }
    return 0;
}
