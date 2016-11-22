//
//  main.m
//  12-去除首尾指定的字符
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *s =  @"<div><你<div/>好></div>";
        
        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"></ivd"];
        
        s = [s stringByTrimmingCharactersInSet:set];
        
        NSLog(@"%@", s);
        
    }
    return 0;
}
