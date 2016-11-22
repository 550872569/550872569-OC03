
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        // NSRange 用来专门表示范围
        // 在计算机中使用 从什么开始, 然后几个 来表示范围
        
        NSString *s1 = @"0123456789";
        // 例如想要表示 2345
        // 就可以使用: 从下标 2 开始, 然后 4 个字符
        
        NSString *s2 = @"abcdefgh";
        // 如果要表示 cde
        // 从下标 2 开始, 然后 3 个字符
        
        // 在 OC 中提供了一个结构体, NSRange 来表示这个范围
        // NSRange range;
        
        // range.location 表示位置, 即 起始位置
        // range.length 表示长度, 即 多少个字符
        
        NSRange range = { 2, 4 };
        
    }
    return 0;
}





