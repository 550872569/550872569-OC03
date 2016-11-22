//
//  main.m
//  02-Category的基本概念
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// Category 是类的一个扩展的计数
// Category 的语法形式有三种
// 1> 分类
//  分类的用法, 表现在两个方面:
// 1, 扩展原有类的方法
//  使用语法
/*
    @interface 类名 (Category的名字)
 
    方法的声明
 
    @end
 
    
    @implementation 类名 (Category的名字)
 
    方法的实现
 
    @end
 */

// 如果需要为已经写好的类提供新的方法, 那么就位这个类提供一个 Category

// 2, 将一个类使用 Category 进行分组开发


// 2> 扩展
// 3> 非正式协议


// 封装判断数字的函数
BOOL isNumFromNSString(NSString *phone) {
    for (int i = 0; i < phone.length; i++) {
        unichar ch = [phone characterAtIndex:i];
        if (!(ch >= '0' && ch <= '9')) {  // ch < '0' || ch > '9'
            return NO;
        }
    }
    return YES;
}

int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *phone = @"12345678909";
        // 验证他是电话号码
        // 1> 长度 11 位
        // 2> 都是数字
        
        // 字符串有一个 length 属性, 表示长度
        // 逐个取出里面的字符
        // phone characterAtIndex:(NSUInteger)
        
        // NSUInteger  非负数
        
        /*
        unichar ch = [phone characterAtIndex:0];
        NSLog(@"%d", ch);
        */
        // ASICC 码中, '0' 48, 'A' 65, 'a' 97
        
        // 判断每一个字符都是数字
        
        // 遍历每一个字符, 看如果有一个不是数字, 那么他就是非数字的, 如果没有发现非数字
        // 那么他就是数字. 假定它就是数字, 遍历即可.
        
        /*
        BOOL isNum = YES;
        for (int i = 0; i < phone.length; i++) {
            unichar ch = [phone characterAtIndex:i];
            if (!(ch >= '0' && ch <= '9')) {  // ch < '0' || ch > '9'
                // 即 第 i 个字符不是数字
                isNum = NO;
                break;
            }
        }
        
        if (isNum) {
            NSLog(@"是数字");
        } else {
            NSLog(@"不是数字");
        }
        */
        
        if (isNumFromNSString(phone) && phone.length == 11) {
            NSLog(@"是手机号码");
        } else {
            NSLog(@"error");
        }
        
        
        // phone.is
    }
    return 0;
}


@interface NSString (isMethod)

- (BOOL)isNum;

@end

@implementation NSString (isMethod)

- (BOOL)isNum {
    for (int i = 0; i < self.length; i++) {
        unichar ch = [self characterAtIndex:i];
        if (!(ch >= '0' && ch <= '9')) {  // ch < '0' || ch > '9'
            return NO;
        }
    }
    return YES;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *phone = @"123456789a8";
        
        if(phone.isNum && phone.length == 11) {
            NSLog(@"是手机号码");
        } else {
            NSLog(@"error");
        }
        
    }
    return 0;
}













