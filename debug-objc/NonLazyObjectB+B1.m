//
//  NonLazyObjectB+B1.m
//  debug-objc
//
//  Created by iCodeWoods on 2019/4/10.
//

#import "NonLazyObjectB+B1.h"

@implementation NonLazyObjectB (B1)

+ (void)load {
    NSLog(@"NonLazyObjectB+B1 load...");
}

+ (void)initialize {
    NSLog(@"NonLazyObjectB+B1 initialize...");
}

@end
