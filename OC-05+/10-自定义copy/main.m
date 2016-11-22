//
//  main.m
//  10-自定义copy
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [Person new];
        p.name = @"张三";
        
        Person *p1 = [p copy];
        // 系统中 NSObject 提供了 copy 的方法(mutableCopy)
        // 该方法用来复制当前对象, 创建一个新的副本
        
        // 但是该方法如何创建是未定义的, 它调用了 copyWithZone: 来具体实现如何创建
        
        // 如果我们需要自己创建副本, 就需要实现该方法
        
        // 而该方法由 NSCopying 来提供
        
    }
    return 0;
}
