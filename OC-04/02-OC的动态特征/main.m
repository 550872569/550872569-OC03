//
//  main.m
//  02-OC的动态特征
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol Test <NSObject>

- (void)sayHello;

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Person *p = [Person new];
        
        // [p sayHello];
        
        // [p performSelector:@selector(sayHello)];
        
        id<Test> obj = [Person new];
        
        [obj sayHello];
    
    }
    return 0;
}
