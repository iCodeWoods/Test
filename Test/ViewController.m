//
//  ViewController.m
//  Test
//
//  Created by iCodeWoods on 2019/3/19.
//  Copyright © 2019 iCodeWoods. All rights reserved.
//

#import "ViewController.h"

@interface SubViewController : ViewController

@end

@implementation SubViewController

@end

@interface ViewController ()

@property (nonatomic, strong) SubViewController *subVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"ViewController viewDidLoad...");
    
    [self addChildViewController:self.subVC];
    [self.view addSubview:self.subVC.view];
    [self.subVC didMoveToParentViewController:self];
}

- (SubViewController *)subVC {
    if (!_subVC) {
        _subVC = [[SubViewController alloc] init];
    }
    return _subVC;
}

@end

