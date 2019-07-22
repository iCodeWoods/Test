//
//  NonLazyObjectA.m
//  debug-objc
//
//  Created by iCodeWoods on 2019/4/10.
//

#import "NonLazyObjectA.h"

@implementation NonLazyObjectA

+ (void)load {
    NSLog(@"NonLazyObjectA load...master");
}

+ (void)initialize {
    NSLog(@"NonLazyObjectA initialize...");
}

@end
