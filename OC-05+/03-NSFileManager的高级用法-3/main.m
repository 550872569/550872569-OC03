//
//  main.m
//  03-NSFileManager的高级用法-3
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *nfm = [NSFileManager defaultManager];
        // 1, 文件的复制
        
        // [nfm copyItemAtPath:@"/Users/apple/Desktop/dir2" toPath:@"/Users/apple/Desktop/dir3" error:nil];
        
        // 2, 文件的移动
        /*
        BOOL isTrue = [nfm moveItemAtPath:@"/Users/apple/Desktop/img.jpg" toPath:@"/Users/apple/Desktop/dir1" error:nil];
        NSLog(@"%d", isTrue);
        */
        // 使用移动的方法, 可以实现文件批量改名
        
        // [nfm moveItemAtPath:@"/Users/apple/Desktop/img.jpg" toPath:@"/Users/apple/Desktop/美女.jpg" error:nil];
        
        
        
        /*
        // 1, 获得所有文件的原始路径
        NSString *dir = @"/Users/apple/Desktop/imgs";
        
        // 2, 获得该路径下的所有图片文件
        NSArray *arr = [nfm contentsOfDirectoryAtPath:dir error:nil];
        
        for (int i = 0; i < arr.count; i++) {
            NSString *fullName = [NSString stringWithFormat:@"%@/%@", dir, arr[i]];   // 原来的路径
            // 新路径
            NSString *newName = [NSString stringWithFormat:@"%@/%03d.jpg", dir, i];
            
            [nfm moveItemAtPath:fullName toPath:newName error:nil];
            
//            NSLog(@"%@", fullName);
//            NSLog(@"%@", newName);
        }
         
         */
        
        
        
        
        
        // 3, 删除文件
        [nfm removeItemAtPath:@"/Users/apple/Desktop/dir1" error:nil];
        
    }
    return 0;
}












