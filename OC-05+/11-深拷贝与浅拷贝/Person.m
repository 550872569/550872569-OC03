//
//  Person.m
//  OC加强-05+
//
//  Created by apple on 15/12/4.
//
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone {

    // 1, 浅拷贝的实现方法
    /*
    Person *p = [Person new];
    p.name = self.name;
    p.car = self.car;
    
    return p;
     */
    
    // 2, 深拷贝
    
    
    Person *p = [Person new];
    p.name = self.name;
    p.car = [self.car copy];

    return p;
}

@end
