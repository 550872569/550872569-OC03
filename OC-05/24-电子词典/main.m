//
//  main.m
//  24-电子词典
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 0, 初始化词典数据 dic
        NSString *file = [NSString stringWithContentsOfFile:@"/Users/apple/Desktop/英汉词典数据-mac版本.txt" encoding:4 error:nil];
        
        // 最终要的是键值对, 所以这里需要创建一个可变键值对
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        
        // NSMutableDictionary<NSString *, NSString *> *dic = [NSMutableDictionary dictionary]; // Xcode 7 特性
        
        
        // 由于单词数据是每一行一个单词, 因此根据行分割字符串, 得到单词数组
        NSArray *lines = [file componentsSeparatedByString:@"\n"];
        
        // 此时 lines 中每一个项都是一个单词 + 3 个空格 + 解释
        // 遍历解析每一个项, 即每一个单词, 将其加入到 dic 中
        for (int i = 0; i < lines.count; i++) {
            // 将每一项用三个空格分割
            NSArray *temp123 = [lines[i] componentsSeparatedByString:@"   "];
            
            NSString *key = temp123.firstObject;
            NSString *value = temp123.lastObject;
            
            
            dic[key] = value;
        
        }
        
        // 已经创建好了字典了. 直接将字典存储到文件中
        [dic writeToFile:@"/Users/apple/Desktop/dic.txt" atomically:YES];
        
        
        
        // 1, 提示用户输入单词
        printf("请输入单词\n");
        char input[256];
        // scanf("%s", input);
        
        fgets(input, 256, stdin);
        
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
