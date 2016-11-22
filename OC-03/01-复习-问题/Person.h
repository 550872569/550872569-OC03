//
//  Person.h
//  OC加强-03
//
//  Created by apple on 15/11/30.
//
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;
+ (instancetype)personWithName:(NSString *)name;

@end
