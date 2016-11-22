//
//  main.m
//  21-使用NSDictionary
//
//  Created by apple on 15/12/3.
//
//

#import <Foundation/Foundation.h>

// 键值对有两个类
// NSDictionary         不可变键值对
// NSMutableDictionary  可变键值对



// 创建
int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSDictionary
        // 1, 增加
       
        // 1> 字面量
        //      语法:
        //          @{  @"key":@"value", @"key1":@"value1"  }
        // 2> 构造方法
        // 3> 快速创建对象的方法
        
        
        
        // 1> 字面量
        // NSDictionary *dic = @{  @"key0":@"value0", @"key1":@"value1", @"key0":@"value2" };
        // NSLog(@"%@", dic);
        
        // 2> 构造方法
        // box   盒子
        // boss  老板
        
        /*
        // NSDictionary *dic = [NSDictionary alloc] initWithObjects:数组作为值 forKeys:数组作为键
        NSArray *keys = [@"box,boss" componentsSeparatedByString:@","];
        NSArray *values = [@"hezi,laoban" componentsSeparatedByString:@","];
        NSDictionary *dic = [[NSDictionary alloc] initWithObjects:values forKeys:keys];
        
        NSLog(@"%@", dic);
        
        NSDictionary *dic2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"value", @"key", @"value1", @"key1", nil];
        
        NSLog(@"%@", dic2);
        */
        
        
        // 3> 快速创建对象的方法
        /*
        NSDictionary *dic = [NSDictionary dictionaryWithObjects:[@"laoban,hezi" componentsSeparatedByString:@","] forKeys:[@"boss,box" componentsSeparatedByString:@","]];
        NSLog(@"%@", dic);
        */
    }
    return 0;
}



// 查询
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = [NSDictionary dictionaryWithObjects:[@"laoban,hezi" componentsSeparatedByString:@","] forKeys:[@"boss,box" componentsSeparatedByString:@","]];
        
        // 查询
        // 根据键 算出一个地址 来获得对应的值
        NSString *v = [dic objectForKey:@"boxing"];
        
        NSLog(@"%@", v);
        
        // 如果可以找到数据, 那么根据键就会返回值
        // 如果没有数据, 那么就会返回一个 nil, NULL, Nil
        
        
        
    }

    return 0;
}






















