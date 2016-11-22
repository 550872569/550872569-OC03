//
//  main.m
//  09-id类型补充
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

#import "Person.h"
// #import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // id o = nil;
        // 可以简单的理解为 id 就是万能指针 与 C 语言中 void * 的概念一样
        // id 类型声明的变量就可以引用任意的对象
        
        id o1 = [Person new];
        
        // id o2 = [Cat new];
        
        [o1 sayHello];
        
        // 此时 o1 引用了该对象就可以调用该类的方法
        // 动态绑定
        
        // [o1 miao]; // 可以吗?
        
        // o1 = o2;
        
        // [o1 miao];
        
        
        // id 类型可以引用任意的对象, 但是不建议去调用方法
        
        
    }
    return 0;
}
