//
//  Car.m
//  OC加强-05+
//
//  Created by apple on 15/12/4.
//
//

#import "Car.h"

@implementation Car

- (id)copyWithZone:(NSZone *)zone {
    
    Car *c = [Car new];
    c.name = self.name;
    
    return c;
}

@end
