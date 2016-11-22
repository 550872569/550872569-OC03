//
//  main.m
//  01-复习-问题
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Person  *p = [[Person alloc] initWithName:@"张三"];
        
        // Person *p = [Person personWithName:@"李四"];
        
        __autoreleasing Person  *p = [[Person alloc] initWithName:@"张三"];
        
        p = nil;
        
        
        // 在 ARC 机制中, 对象有四个修饰符
        // __strong
        // __weak
        // __unsafe_unretained
        // __autoreleasing
    }
    return 0;
}
