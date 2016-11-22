//
//  main.m
//  18-字符串与数组的连用
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1, 字符串可以使用某个字符串进行分割, 然后得到一个数组
        // 假设要得到一个由 0~9 的字符串组成的数组
        // NSArray *arr1 = @[ @"0", @"1", @"2", ..., @"9" ];
        
        NSArray *a = [@"0-1-2-3-4-5-6-7-8-9" componentsSeparatedByString:@"-"];
        
        [a enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"%@", obj);
        }];
        
        
        // 2, 数组也可以通过一个字符串链接成一个长的字符串
        
        NSString *str = [a componentsJoinedByString:@",#"];
        NSLog(@"%@", str);
        
    }
    return 0;
}
