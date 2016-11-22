//
//  Person.h
//  OC加强-04
//
//  Created by apple on 15/12/1.
//
//

#import <Foundation/Foundation.h>

// #import "Blacktail.h"

#import "Launchable.h"

@interface Person : NSObject

// @property (nonatomic, strong) Blacktail *blacktail;
@property (nonatomic, strong) id<Launchable> gun;

/** 扣动扳机, 让枪发射子弹 */
- (void)shoot;

@end
