//
//  main.m
//  07-字符串截取
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 字符串截取就是在一个字符串中, 将符合要求的一部分字符串取出来
        // 关键字 substring
                       //01234567890123456
        NSString *s1 = @"abcdefghigiujk";
        
        // NSString *s2 = [s1 substringFromIndex:3];
        // NSString *s2 = [s1 substringToIndex:6];
        // 在 科学计算中 表示范围的时候, 一般左边取得到, 右边取不到

        
        NSRange r = NSMakeRange(3, 4);
        NSString *s2 = [s1 substringWithRange:r];
        
        NSLog(@"%@", s2);
    }
    return 0;
}
