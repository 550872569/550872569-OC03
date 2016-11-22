//
//  main.m
//  11-深拷贝与浅拷贝
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>

#import "Person.h"


#if 0
int main1(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1 第一种观点
        /*
        // 1> 浅拷贝, 是指拷贝引用变量
        
        Person *p1 = [Person new];
        Person *p2 = p1;  // 浅拷贝
        
        // 2> 深拷贝, 就是连同对象数据一起全部拷贝
        Person *p3 = [Person new];
        // p3.属性 = p1.属性;
        // ...
        // ...
        */
        
        
        // 2 第二种观点
        // 拷贝 就是要 复制
        // 如果对象中的属性都是值类型, 那么深拷贝与浅拷贝没有区别
        // 如果对象属性含有类类型的, 那么深拷贝与浅拷贝才有区别
        Person *p1 = [Person new];
        Car *c = [Car new];
        
        p1.c = c; // 人有车
        // 浅拷贝
        
        Person *p2 = [Person new];
        p2.c = p1.c; // 第二个对象中所有属性值, 是第一个对象中所有属性值
        // ...
        
        
        // 深拷贝
        Person *p3 = [Person new];
        Car *c3 = [Car new];
        p3.值类型属性 = p1.值类型属性;
        
        c3.值类型属性 = p1.c.值类型属性;
        
        p3.c = c3;
        
        
        
    }
    return 0;
}
#endif


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.name = @"张三丰";
        
        Car *car = [Car new];
        car.name = @"劳斯莱斯";
        
        p.car = car;
        
        // 拷贝
        Person *p2 = [p copy];
        
        
        NSLog(@"p .name = %@, p .car.name = %@, p  = %p, p .car = %p", p.name, p.car.name, p, p.car);
        NSLog(@"p2.name = %@, p2.car.name = %@, p2 = %p, p2.car = %p", p2.name, p2.car.name, p2, p2.car);
    }
    return 0;
}