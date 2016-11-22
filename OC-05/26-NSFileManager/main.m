//
//  main.m
//  26-NSFileManager
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

// 该类完成对文件的基本信息的访问与基本操作, 保存创建, 删除, 移动, 复制

// 1, 该类为一个单例类
//  创建的时候使用 defaultManager 类方法来获得对象


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *nfm = [NSFileManager defaultManager];
        
//        BOOL isExist1 = [nfm fileExistsAtPath:@"/Users/apple/Desktop/dir"];
//        BOOL isExist2 = [nfm fileExistsAtPath:@"/Users/apple/Desktop/file.txt"];
//        
//        NSLog(@"isExist1 = %d", isExist1);
//        NSLog(@"isExist2 = %d", isExist2);
        
        // 这些方法没有办法区分它到底是文件还是文件夹
        
        // BOOL isDir1;
        // BOOL isExist1 = [nfm fileExistsAtPath:@"/Users/apple/Desktop/file1.txt" isDirectory:&isDir1];
        // 此时, 方法的返回值是表示文件或文件夹是否存在
        // 而参数返回该路径是否为一个文件夹
        
        
        // NSLog(@"isDir1 = %d", isDir1);
        // NSLog(@"isExist1 = %d", isExist1);
        
        
        BOOL isWriteable = [nfm isWritableFileAtPath:@"/Users/apple/Desktop"];
        NSLog(@"%d", isWriteable);
    }
    return 0;
}
