//
//  NonLazyObjectA+A1.m
//  debug-objc
//
//  Created by iCodeWoods on 2019/4/10.
//

#import "NonLazyObjectA+A1.h"

@implementation NonLazyObjectA (A1)

+ (void)load {
    NSLog(@"NonLazyObjectA+A1 load...");
}

+ (void)initialize {
    NSLog(@"NonLazyObjectA+A1 initialize...");
}

@end
