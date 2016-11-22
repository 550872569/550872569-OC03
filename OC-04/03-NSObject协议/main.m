//
//  main.m
//  03-NSObject协议
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

// 协议语法后面有一个 <NSObject>
@protocol Test <NSObject>

@end

// 系统级别常用的方法都在协议中声明了

// 在定义协议的时候, 在后面写上 <NSObject> 与类的继承很像





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
