//
//  NonLazyObjectB.m
//  debug-objc
//
//  Created by iCodeWoods on 2019/4/10.
//

#import "NonLazyObjectB.h"
#import "NonLazyObjectA.h"

@implementation NonLazyObjectB

+ (void)load {
    NonLazyObjectA *a = [[NonLazyObjectA alloc] init];
    NSLog(@"NonLazyObjectB load... a = %@", a);
}

+ (void)initialize {
    NonLazyObjectA *a = [[NonLazyObjectA alloc] init];
    NSLog(@"NonLazyObjectB initialize... a = %@", a);
}

@end
