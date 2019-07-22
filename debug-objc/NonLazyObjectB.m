//
//  NonLazyObjectB.m
//  debug-objc
//
//  Created by iCodeWoods on 2019/4/10.
//

#import "NonLazyObjectB.h"

@implementation NonLazyObjectB

+ (void)load {
    NSLog(@"NonLazyObjectB load...123");
}

+ (void)initialize {
    NSLog(@"NonLazyObjectB initialize...");
}

@end
