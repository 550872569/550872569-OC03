//
//  main.m
//  04-协议的继承
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

@protocol Test1 <NSObject>

- (void)method;

@end


@protocol Test2 <Test1>


@end

@interface Person : NSObject <Test2>

@end

@implementation Person


@end


// 协议的使用有一个原则, 就是只干自己的事情

// 协议支持多继承, 就是将多个协议合成一个协议


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
