//
//  Person.m
//  OC加强-03
//
//  Created by apple on 15/11/30.
//
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}
+ (instancetype)personWithName:(NSString *)name {
    return [[self alloc] initWithName:name];
}



- (void)dealloc {
    NSLog(@"%@ 释放", _name);
}
@end
