//
//  main.m
//  01-NSFilemanager的高级用法-2
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *nfm = [NSFileManager defaultManager];
        // 1, 创建文件
        // 在 Windows 中习惯上成为文件夹, 实际上它叫做目录
        // [nfm createDirectoryAtPath:@"文件夹的路径" withIntermediateDirectories:NO attributes:nil error:nil];
        
        /*
        BOOL isTrue = [nfm createDirectoryAtPath:@"/Users/apple/Desktop/dir2/dir" withIntermediateDirectories:YES attributes:nil error:nil];
        NSLog(@"%d", isTrue);
         */
        
        // [nfm createFileAtPath:@"路径" contents:数据 attributes:nil];
        /*
        BOOL isTrue = [nfm createFileAtPath:@"/Users/apple/Desktop/txt.txt" contents:[@"abc" dataUsingEncoding:4] attributes:nil];
        NSLog(@"%d", isTrue);
        
        [@"abc" writeToFile:@"" atomically:YES encoding:4 error:nil];
        */
        
    }
    return 0;
}
