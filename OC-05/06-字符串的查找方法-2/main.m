//
//  main.m
//  06-字符串的查找方法-2
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //              012345678901234
        NSString *s = @"12345678901234567890";
        
        // 要找出 3
        NSRange range = [s rangeOfString:@"3"];
        NSLog(@"%@", NSStringFromRange(range));
        
        // 要找出第二个 3
        // 应在 从 下标为 3 的位置开始, 在后面的 17 个字符中找剩下的 3
        NSRange range1 = NSMakeRange(3, 17);
        NSRange range2 = [s rangeOfString:@"3" options:1 range:range1];
        NSLog(@"%@", NSStringFromRange(range2));
        
        // 如果有多个呢?
        
        while(1) {
        
            if (NSNotFound) {
                break;
            }
        }
    }
    return 0;
}
