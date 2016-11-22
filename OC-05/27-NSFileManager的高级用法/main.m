//
//  main.m
//  27-NSFileManager的高级用法
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>


void usage1() {
    // 第一种用法, 获取文件信息
    NSFileManager *nfm = [NSFileManager defaultManager];
    
    NSDictionary *dic = [nfm attributesOfItemAtPath:@"/Users/apple/Desktop/常用命令.txt" error:nil];
    
    NSLog(@"%@", dic);

}



void usage2() {
    // 第二种用法, 获得目录下的内容
    NSFileManager *nfm = [NSFileManager defaultManager];
    // NSArray *arr = [nfm subpathsAtPath:@"/Users/apple/Desktop/dir1"];
    
    // NSArray *arr = [nfm subpathsOfDirectoryAtPath:@"/Users/apple/Desktop/dir1" error:nil];
    
    NSArray *arr = [nfm contentsOfDirectoryAtPath:@"/Users/apple/Desktop/dir1" error:nil];
    
    NSLog(@"%@", arr);

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // usage1();
        
        usage2();
    }
    return 0;
}
