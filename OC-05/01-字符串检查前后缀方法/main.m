//
//  main.m
//  01-字符串检查前后缀方法
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 所谓的检查前后缀, 就是判断字符串是以什么开头或者以什么结尾
        // 关键字: has
        
        NSString *txt = @"123.mp3";
        
        // hasPrefix 判断前缀
        // hasSuffix 判断后缀的
        
        
        if ([txt hasSuffix:@".mp3"]) {
            
        }
        
        
        
        
    }
    return 0;
}
