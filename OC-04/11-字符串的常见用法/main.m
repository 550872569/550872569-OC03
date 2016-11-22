//
//  main.m
//  11-字符串的常见用法
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

// 字符串操作类有两个: NSString(不可变字符串), NSMutableString(可变字符串)

// 该如何学习:
//  1, 掌握一个规律, 将常用的方法分类: 增删改查与其他
//  2, 如果有的方法有多种情况, 我们首先学习最简单的, 使用熟练后在考虑复杂的

// NSString 是不可变字符串, 主要讨论 增加 和 查询与其他

// 增加(创建方法)
// 1, 字面量
// 2, 构造方法
// 3, 快速创建对象方法


int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        //
        // NSString *s1 = [[NSString alloc] initWithContentsOfFile:@"路径" encoding:0/* 字符编码 */error:nil];

        
        // NSString *s2 = [[NSString alloc] initWithContentsOfFile:@"/Users/apple/Desktop/复习.txt" encoding:NSUTF8StringEncoding error:nil];
        // NSLog(@"%@", s2);
        
        
        // URL 统一资源地址, 就是网址
        // NSString *s3 = [[NSString alloc] initWithContentsOfURL:网址 encoding:编码 error:nil];
        
        // NSString *s4 = [[NSString alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.itcast.cn"] encoding:4 error:nil];
        // NSLog(@"\n%@", s4);
        
        
        // NSString *s5 = [[NSString alloc] initWithUTF8String:"123"];
        // NSLog(@"%@", s5);
        
        
        
        [[NSString alloc] initWithFormat:@"123%@", @"121212"];
    }
    return 0;
}






// 有时为了方便打印查看数据的结果, 我们会封装一些常用的函数
//
NSString *NSStringFromBOOL(BOOL isTrue) {
    return isTrue ? @"YES" : @"NO";
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 查询类的方法
        
        // 1, 比较
        // isEqualToString
        // compare
        
        /*
        NSString *s1 = @"123"; 
        NSString *s2 = @"1a3";
        
        NSLog(@"%d", [s1 isEqualToString:s2]); // 1
        
        NSLog(@"%@", NSStringFromBOOL([s1 isEqualToString:s2]));
        */
        
        
        NSString *s3 = @"123";
        NSString *s4 = @"2";
        
        // NSInteger res = [s3 compare:s4];
        
        NSInteger res = [s3 compare:s4 options:NSNumericSearch];
        
        NSLog(@"%ld", res);
        
        
        // strcmp("1", "2"); // 如果 > 返回 大于0的数; 如果 == 返回 0; 如果 < 返回小于0的数
    }
    return 0;
}





















