//
//  main.m
//  08-代理设计模式
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

// 1, 老板

// 2, 开枪

// 通过刚才的分析, 代理设计模式有几个必须有的结构
// 1> 一定要有两个类, 或两个对象. 他们分别是目标对象和代理对象
// 2> 目标对象中有一个属性, 去引用代理对象
// 3> 在目标对象中一定有一个方法, 来关联两个对象, 即通知代理对象的方法
// 4> 在通知方法中就是在调用代理对象的指定的方法


#import "Person.h"
#import "Blacktail.h"
#import "TMP.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        Person *ada = [Person new];
        Blacktail *blacktial = [Blacktail new];
        
        // 人持枪
        ada.blacktail = blacktial;
        
        [ada shoot];
        */
        
        
        Person *ada = [Person new];
        Blacktail *blacktail = [Blacktail new];
        TMP *tmp = [TMP new];
        
        
        // 1, 人在没有持枪的时候, 没有任何行为
        NSLog(@"------");
        [ada shoot];
        NSLog(@"------");
        
        // 2, 人持有黑尾的时候扣动扳机
        ada.gun = blacktail;
        [ada shoot];
        
        // 3, 人持有 TMP 的时候扣动扳机
        ada.gun = tmp;
        [ada shoot];
        
        
        
        
    }
    return 0;
}










