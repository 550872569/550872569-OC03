//
//  main.m
//  04-Category的使用注意与私有扩展的概念
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// 在 Category 中不允许声明变量, 只允许声明方法

// 使用扩展(extension)

// 语法
/*
    @interface 类名 ()
    方法
    @end
 */

// 实际上 扩展常常作为私有扩展使用




#import "NSObject+Test.h"
#import "Person.h"
#import "Person_PersonExt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSObject *o = [NSObject new];
        
        // o.age = 123;
        
        Person *p = [Person new];
        p.name = @"张三";
        
        NSLog(@"p.name = %@", p.name);
        
    }
    return 0;
}
