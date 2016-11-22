//
//  main.m
//  06-NSDate
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate date];
        NSLog(@"%@", date);
        
        // NSDateFormatter 是一个格式化日期与字符串的类
        // 他可以轻松的实现字符串与时间对象的互相转换, 并且可以格式化任意的输入形式
        
        // 1999年1月1日 1:1:1
        // 1999年1月1日 1时 1分 1秒
        // 1999-1-1 1:1:1
        // 1:1:1 1/1/1999
        
        // 格式化就需要有格式字符串, 类似于 %@, %d
        // yyyy 年
        // MM   月
        // dd   日
        // hh   时   HH  24小时
        // mm   分
        // ss   秒
        
        NSDateFormatter *formatter = [NSDateFormatter new];
        // formatter.dateFormat = @"yyyy年MM月dd日 hh:mm:ss";
        formatter.dateFormat = @"HH:mm:ss dd/MM/yyyy";
        
        
        // NSString *s = [formatter stringFromDate:date];
        
        // NSLog(@"%@", s);
        
        
        NSString *s = @"15:38:40 04/12/2015";
        
        NSDate *date1 = [formatter dateFromString:s];
        
        NSLog(@"%@", date1);
        
    }
    return 0;
}
