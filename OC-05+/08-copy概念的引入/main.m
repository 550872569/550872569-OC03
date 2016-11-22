//
//  main.m
//  08-copy概念的引入
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        NSMutableString *s = [NSMutableString string];
        [s appendString:@"张三"];
        
        p.name = s;
        
        NSLog(@"s = %@, p.name = %@", s, p.name);
        
        // 修改 s 的内容
        [s appendString:@"李四"];
        
        NSLog(@"s = %@, p.name = %@", s, p.name);
        
    }
    return 0;
}
