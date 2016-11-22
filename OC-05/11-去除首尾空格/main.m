//
//  main.m
//  11-去除首尾空格
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 去除首尾空格
        // 关键字 stringBy + trimming
        /*
        NSString *s = @"   123    ";
        
        NSLog(@"|%@|", s);
        
        s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        NSLog(@"|%@|", s);
         */
        
        
        
        NSString *s = @"123abcdef123ghij123";
        
        s = [s stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
        
        NSLog(@"%@", s);
    }
    return 0;
}
