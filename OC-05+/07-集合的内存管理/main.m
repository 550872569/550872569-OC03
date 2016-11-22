//
//  main.m
//  07-集合的内存管理
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1, 对象被集合引用后, 所有者就会 +1
        Person *p = [Person new];
        NSLog(@"p.retainCount = %lu", p.retainCount);
        
        NSMutableArray *arr = [NSMutableArray array];
        
        NSLog(@"p.retainCount = %lu", p.retainCount);
        
        // 加入集合
        [arr addObject:p];
        
        NSLog(@"p.retainCount = %lu", p.retainCount);
        
        // 2, 集合被释放后, 会将引用的所有对象都 -1
        [arr release];
        
        NSLog(@"p.retainCount = %lu", p.retainCount);
        
        NSLog(@"=====");
        [p release];
        
    }
    return 0;
}
