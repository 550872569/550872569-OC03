//
//  main.m
//  10-有参数和有返回值的block
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>
// 3, 无参数有返回值的 block
int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int (^myblock)() = ^{
        
            NSLog(@"-------");
            
            return 123; // 必须
        };
        
        int res = myblock();
        
        NSLog(@"res = %d", res);
    }
    return 0;
}


// 4, 有参数有返回值
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int (^addition)(int, int) = ^(int a, int b){
        
            return a + b;
        };
        NSUInteger
        int res = addition(1, -11);
        
        NSLog(@"res = %d", res);
    }
    return 0;
}
