//
//  main.m
//  13-block的使用技巧
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>




void func ( int (^block)(int a, int b) ) {

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1, inlineblock
        void(^myblock)() = ^() {
            NSLog(@"无参数无返回");
        };
        
        // 2, 作为函数参数的 block
        /*
        int (^block)(int, int) = ^(int a, int b) {
            return 0;
        };
        
        func(block);
        */
        
//        func(^int(int a, int b) {
//            code
//        })
        
        // 如果希望自己的代码也有灰色的框框, 使用 <# #~>
        
        
        
    }
    return 0;
}
