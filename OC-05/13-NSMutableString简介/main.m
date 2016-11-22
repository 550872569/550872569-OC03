//
//  main.m
//  13-NSMutableString简介
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

// 可变字符串
// NSMutableString

// 对于 可变字符串 使用最多的就是创建字符串和构造字符串
// 也就是说, 追加与插入使用的比较多. 一般都是使用 NSString


@interface NSMutableString (ITCNSStringExt)
- (void)deleteString:(NSString *)str;
@end

@implementation NSMutableString (ITCNSStringExt)

- (void)deleteString:(NSString *)str {
    NSRange range = [self rangeOfString:str];
    [self deleteCharactersInRange:range];
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableString *s1 = [[NSMutableString alloc] init];
        NSMutableString *s2 = [NSMutableString string];
        // 使用可变的字符串, 其目的就是为了构造动态的字符串
        // 因此使用的时候, 都是首先创建一个 空的字符串, 作为容器
        // 然后根据需要构造相应的字符串
        
        // 1, 加入字符串
        // appendString
        // appendFormat
        
        /*
        [s1 appendString:@"1"];
        [s1 appendString:@"2"];
        [s1 appendString:@"3"];
        
        [s2 appendFormat:@"%d + %d = %d\n", 1, 2, 1 + 2];
        [s2 appendFormat:@"123"];
        
        NSLog(@"|%@|", s1);
        NSLog(@"|%@|", s2);
        NSLog(@"over");
        */
        
        
        // 2, 插入字符串
        /*
        //                 0123456789012
        [s1 appendString:@"abcdefghijkl"];
        
        [s1 insertString:@"123" atIndex:4];
        
        NSLog(@"%@", s1);
         */
        
        
        
        // 3, 删除
        /*
        //                 0123456789012
        [s1 appendString:@"abcdefghijkl"];
        
        [s1 deleteCharactersInRange:NSMakeRange(2, 4)];
        
        NSLog(@"%@", s1);
        */
        
        
        // 4, 修改
        /*
        //                 0123456789012
        [s1 appendString:@"abcdefghijkl"];

        [s1 replaceCharactersInRange:NSMakeRange(1, 9) withString:@"123"];
        
        NSLog(@"%@", s1);
        */
        
        // 5, 将某一个字符串删掉. 删除 fgh
        //                 0123456789012
        [s1 appendString:@"abcdefghijkl"];
        
        /*
        NSRange range = [s1 rangeOfString:@"fgh"];
        
        [s1 replaceCharactersInRange:range withString:@""];
        */
        
        
        [s1 deleteString:@"abcdefg"];
        
        NSLog(@"%@", s1);
        
    }
    return 0;
}






