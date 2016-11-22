//
//  main.m
//  05-协议的多继承
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

//
@protocol fire <NSObject>
- (void)bigfireball;    // 大火球之术
@end

@protocol ice <NSObject>
- (void)icestorm;       // 冰风暴之术
@end

@protocol thunder <NSObject>
- (void)chidori;        // 雷电之术
@end


// 法师需要一个技能包含所有的攻击
@protocol magic <fire, ice, thunder>

@end


@interface Person : NSObject <magic>

@end


@implementation Person

@end




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
