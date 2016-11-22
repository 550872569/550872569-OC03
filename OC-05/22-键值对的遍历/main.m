//
//  main.m
//  22-键值对的遍历
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = [NSDictionary dictionaryWithObjects:[@"laoban,hezi" componentsSeparatedByString:@","] forKeys:[@"boss,box" componentsSeparatedByString:@","]];
        
        // 1> for-in
        /*
        for (NSString *key in dic) {
            NSLog(@"%@ === %@", key, [dic objectForKey:key] );
        }
        */
        // 根据键获得值, 也可以使用方括号的语法
        /*
        for (NSString *key in dic) {
            NSLog(@"%@,    %@", key, dic[key]);
        }
        */
        
        
        
        
        // 2> block 遍历
        [dic enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
           
            NSLog(@"key = %@, value = %@", key, obj);
            
            // if ([key isEqualToString:@""]) *stop = YES;
            
        }];
    }
    return 0;
}
