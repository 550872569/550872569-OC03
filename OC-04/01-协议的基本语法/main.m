//
//  main.m
//  01-协议的基本语法
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

// 协议就是一堆方法的声明

// 协议就是为了让类去采纳的, 即实现里面的方法

// 协议的语法
/*
@protocol 协议名 <NSObject>

方法声明

@end
*/


@protocol Fly <NSObject>

- (void)flying;

@end

// 类是如何采纳协议
@interface Pig : NSObject <Fly>

@end

@implementation Pig

- (void)flying {
    NSLog(@"飞天小猪...");
}

@end


// 要说明他和多态有什么关系, 那么就需要考虑另一个类
@interface superman : NSObject <Fly>

@end

@implementation superman

- (void)flying {
    NSLog(@"在天上飞的人就是超人");
}

@end


// 使用 id 类型, 可以引用任意的对象
// 但是 id 类型也不是可以调用任意的方法
// 现在需要 id 类型允许使用协议中的方法
// 使用协议约束 id 类型即可
// id<协议名>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Pig *pig = [Pig new];
        
        // [pig flying];
        
        superman *sp = [superman new];
        
        // [sp flying];
        
        // id obj = pig;
        
        // 多态
        id<Fly> o = nil;
        
        [o flying]; // 没有效果
        
        o = pig;
        
        [o flying];
        
        
        o = sp;
        
        [o flying];
        
    }
    return 0;
}




