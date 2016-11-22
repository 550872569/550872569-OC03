//
//  main.m
//  03-使用Xcode生成Category
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>
#import "NSString+isMethod.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *phone = @"123456 78909";
        
        if (phone.isNum) {
            NSLog(@"数字");
        } else {
            NSLog(@"Error");
        }
        
        // NSLog(@"%c--%d", ' ', ' ');
    }
    return 0;
}
