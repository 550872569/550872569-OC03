//
//  main.m
//  09-字符串替换
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 将一个字符串中的某一个部分替换成需要的样子
        // 关键字 stringBy + replace
        
        /*
        NSString *email = @"123#qq.com";
        
        NSString *s = [email stringByReplacingOccurrencesOfString:@"#" withString:@"@"];
        
        NSLog(@"%@", s);
        */
        
        
        // http://www.itcast.cn
        
//        NSString *url = @"http:**www.itcast.cn*index.html";
//        url = [url stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
//        NSLog(@"%@", url);
        
        
        NSString *url = @"ht tp  :**ww   w.it     ca   st.cn*in    dex.ht   ml";
        NSLog(@"%p", url);
        url = [url stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSLog(@"%p", url);
        url = [url stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
        NSLog(@"%p", url);
        NSLog(@"%@", url);
        
        
    }
    return 0;
}
