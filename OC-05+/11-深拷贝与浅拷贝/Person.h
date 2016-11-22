//
//  Person.h
//  OC加强-05+
//
//  Created by apple on 15/12/4.
//
//

#import <Foundation/Foundation.h>
#import "Car.h"

@class Person;

static Person *single;



@interface Person : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) Car *car;

@end
