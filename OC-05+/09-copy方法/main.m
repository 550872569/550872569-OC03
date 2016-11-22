//
//  main.m
//  09-copy方法
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *s = [NSMutableString stringWithFormat:@"123"];
        NSLog(@"%p, %@", s, s );
        
        // NSMutableString *s2 = [s copy];
        
        
        NSMutableString *s2 = [s mutableCopy];
        
        
        NSLog(@"%p, %@" , s2, s2);
        
    
        [s2 appendString:@"123"];
        
        // 在 OC 中提供了两种 copy 的方法
        // copy
        // mutableCopy
        NSLog(@"%p, %@" , s2, s2);
    }
    return 0;
}
