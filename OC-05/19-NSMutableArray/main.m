//
//  main.m
//  19-NSMutableArray
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>


@interface NSMutableArray (ITCArrayExt)

- (void)replaceObject:(id)obj1 withObject:(id)obj2;

@end

@implementation NSMutableArray (ITCArrayExt)

- (void)replaceObject:(id)obj1 withObject:(id)obj2 {
    NSUInteger index = [self indexOfObject:obj1];
    if (index != NSNotFound) {
        [self replaceObjectAtIndex:index withObject:obj2];
    }
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 使用可变数组基本上就是为了实现动态的生成数组
        // 一般就是生成一个空的数组, 然后的将元素一个个加入进来
        
        NSMutableArray *arr1 = [[NSMutableArray alloc] init]; // 空数组
        NSMutableArray *arr2 = [NSMutableArray array]; // 空
        
        NSLog(@"%@", arr1);
        NSLog(@"%@", arr2);
        
        // 加入数据
        // 1, 追加
        [arr1 addObject:@"123"];
        [arr1 addObject:@"abc"];
        
        // 2, 插入
        [arr1 insertObject:@"你好" atIndex:1];
        
        // NSLog(@"%@", arr1);
        
        
        // 3, 删除
        // [arr1 removeAllObjects];
        
        
        // 4, 修改
        // [arr1 replaceObjectAtIndex:1 withObject:@"Hello"];
        // arr1[1] = @"Hello";
        
        
        
        // 查询
        // arr1 indexOfObject:<#(id)#>
        
//        NSUInteger index = [arr1 indexOfObject:@"你好"];
//        if (index != NSNotFound) {
//            [arr1 replaceObjectAtIndex:index withObject:@"hello"];
//        }
        
        
        [arr1 replaceObject:@"你好 iOS" withObject:@"hello iOS"];
        
        [arr1 exchangeObjectAtIndex:0 withObjectAtIndex:2];

        NSLog(@"------");
        [arr1 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"%@", obj);
        }];
        NSLog(@"------");
        
        
        
    }
    return 0;
}
