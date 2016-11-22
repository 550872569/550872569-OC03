//
//  main.m
//  25-新电子词典
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 0, 获得电子词典数据
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:@"/Users/apple/Desktop/dic.txt"];
        
        // 1, 提示用户输入单词
        printf("请输入单词\n");
        char input[256];
        scanf("%s", input);
        
        // fgets(input, 256, stdin);
        
        NSString *wd = [NSString stringWithUTF8String:input];
        
        // 2, 查询单词  dic[input]
        if (dic[wd]) {
            printf("单词: %s\n", input);
            
            // UTF8String
            NSString *temp = dic[wd];
            
            
            printf("解释: %s\n", temp.UTF8String);
        } else {
            printf("单词: %s\n", input);
            
            printf("没有查到该单词, 请联系, 传智播客.....\n");
        }
        
        // 3, 给出结果
    }
    return 0;
}
