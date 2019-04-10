//
//  ViewController.m
//  Test
//
//  Created by iCodeWoods on 2019/3/19.
//  Copyright © 2019 iCodeWoods. All rights reserved.
//

// ViewController.m

#import "ViewController.h"

@interface SubViewController : ViewController

- (void)test;

@end

@implementation SubViewController

+ (void)initialize {
    NSLog(@"SubViewController initialize... self = %@", self);
}

- (void)dealloc {
    NSLog(@"SubViewController dealloc... self = %@", self);
    [self removeObserver:self forKeyPath:@"view"];
}

- (void)test {
    NSLog(@"SubViewController test...");
    [self addObserver:self forKeyPath:@"view" options:NSKeyValueObservingOptionNew context:nil];
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SubViewController *subVC = [[SubViewController alloc] init];
    [subVC test];    
}

@end
