//
//  NSString+isMethod.m
//  OC加强-03
//
//  Created by apple on 15/11/30.
//
//

#import "NSString+isMethod.h"

@implementation NSString (isMethod)

- (BOOL)isNum {
    for (int i = 0; i < self.length; i++) {
        unichar ch = [self characterAtIndex:i];
        if (!(ch >= '0' && ch <= '9')) {  // ch < '0' || ch > '9'
            return NO;
        }
    }
    return YES;
}

@end
