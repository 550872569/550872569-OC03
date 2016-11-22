//
//  main.m
//  12-了解-block与__block与外部变量
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

typedef void (^block)();

block func() {
    __block int i = 123456;
    
    NSLog(@"func: &i = %p", &i);
    
    void (^myblock)() = ^{
        NSLog(@"block:&i = %p", &i);
        NSLog(@"%d", i);
    };
    
    NSLog(@"func: &i = %p", &i);
    
    myblock();
    
    NSLog(@"func: &i = %p", &i);
    return myblock;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        func();
        
        
    }
    return 0;
}

