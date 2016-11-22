//
//  main.m
//  05-字符串的查找方法
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 字符串的查找方法是指从一个字符串中找某一个部分的方法
        // 关键字 rangeOf
        NSString *s = @"abcdefg";
        // 找出里面的 字符 c
        NSRange range = [s rangeOfString:@"c"];
        
        NSLog(@"%@", NSStringFromRange(range));
        
        // 如果找不到呢? 要找 z
        NSRange r1 = [s rangeOfString:@"z"];
        NSLog(@"%@", NSStringFromRange(r1));
        
        // 如果没有找到, 就会返回 location 为一个非常大的数字, length 为 0
        // 这个非常大的数字在 OC 中被定义为 NSNotFound
        
        NSLog(@"%lu", NSNotFound);
    }
    return 0;
}
