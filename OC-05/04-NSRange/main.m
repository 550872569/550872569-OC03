//
//  main.m
//  04-NSRange
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSRange range;
        
        // 创建这个变量并初始化
        NSRange range1 = { 2, 4 };
        
        NSRange r1 = NSMakeRange(2, 4);
        
        // 打印出来
        NSLog(@"range1.location = %lu, range1.length = %lu", range1.location, range1.length);
        
        // 直接以字符串的形式打印
        NSLog(@"%@", NSStringFromRange(r1));
        
        
    }
    return 0;
}
