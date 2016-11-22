//
//  main.m
//  17-block遍历数组的实现
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>


//void func(id obj, int i) {
//    // 遍历全部
//    // NSLog(@"%@", obj);
//    // 遍历偶数
//    if (i % 2 == 0) {
//        NSLog(@"%@", obj);
//    }
//}

typedef void (^myblock)(id obj, int i, BOOL *stop);

@interface NSArray (ITCFor)
- (void)ITCForBlock:(myblock)block;
@end

@implementation NSArray (ITCFor)

- (void)ITCForBlock:(myblock)block {
    for (int i = 0; i < self.count; i++) {
        BOOL isStop = NO;
        
        block(self[i], i, &isStop);
        
        if (isStop == YES) {
            break;
        }
    }
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = [@"1,2,33,4,5,6,7,8,9,0" componentsSeparatedByString:@","];
        
        /*
        for (int i = 0; i < arr.count; i++) {
            
            // 遍历全部
            // NSLog(@"%@", arr[i]);
            
            // 遍历偶数项
            // if (i % 2 == 0) {
            //     NSLog(@"%@", arr[i]);
            // }
            
            
            func(arr[i], i);
        }
        */
        
        
        [arr ITCForBlock:^(id obj, int i, BOOL *stop) {
            NSLog(@"%d-----%@", i, obj);
            if (i == 3) {
                *stop = YES;
            }
        }];
    }
    return 0;
}
