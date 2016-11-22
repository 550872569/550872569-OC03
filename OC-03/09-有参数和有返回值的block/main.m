//
//  main.m
//  09-有参数和有返回值的block
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

// 1, 无参数无返回

// 2, 有参数无返回

// void func(int num);
// 标准的 C 语言库声明函数时, 参数都是只有类型的
void func(int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        void (^myblock)(int a, int b);
        // 也可以定义为
        void (^myblock2)(int, int);
        
        
        // 赋值
        myblock = ^(int a, int b){
            NSLog(@"%d + %d = %d", a, b, a + b);
        };
        
        myblock(1, -12);
        
    }
    return 0;
}




void func(int num) {

}


















// 小技巧
// void foo(void * (*)(int *, void *(*)()));







