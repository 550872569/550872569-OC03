//
//  main.m
//  08-电子词典思路
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *url = @"http://dict.youdao.com/search?le=eng&q=%@&keyfrom=dict.top";
        
        url = [NSString stringWithFormat:url, @"box"];
        
        NSString *html = [NSString stringWithContentsOfURL:[NSURL URLWithString:url] encoding:4 error:nil];
        
        
        
        // 将里面的的  <div class="trans-container"> ... </div> 截取出来
        NSRange r1 = [html rangeOfString:@"</h2>"];
        
        // 0123456789
        
        NSRange r2 = NSMakeRange(r1.location, html.length - r1.location);
        html = [html substringWithRange:r2];
        
        // html = [html substringFromIndex:r1.location];
        
        // 在 找 </div>
        NSRange r3 = [html rangeOfString:@"</div>"];
        html = [html substringToIndex:r3.location];
        
        
        NSLog(@"\n%@", html);
        
    }
    return 0;
}
