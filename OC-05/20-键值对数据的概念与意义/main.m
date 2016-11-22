//
//  main.m
//  20-键值对数据的概念与意义
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

// 键值对
// 1, 为什么需要这个数据类型. 数组可以存储数据, 但是查找比较费劲
// 2, 是什么类型
//      键值对是一个"散列表(哈希表, hash)". 他的特点就是按照键来存储数据
//      系统中在存储数据的时候, 都是按照键和值一起存储的
//      首先根据键算出一个唯一的地址来. 然后将数据存储到该地址处
//      那么很容易根据键九算出地址取出数据. 因此在查找技术中常常使用该方法


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
